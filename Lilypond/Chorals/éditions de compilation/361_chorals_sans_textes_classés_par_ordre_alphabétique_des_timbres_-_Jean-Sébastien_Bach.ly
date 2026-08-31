\version "2.27.1"

\pointAndClickOff

#(use-modules (ice-9 ftw) (ice-9 regex) (ice-9 textual-ports))

#(define own-dir (dirname (car (ly:input-file-line-char-column (*location*)))))
#(define source-dir (string-append own-dir "/../Chorals sans paroles - notes et layout séparés"))

#(define (read-utf8-file path)
   (call-with-input-file path
     (lambda (port)
       (set-port-encoding! port "UTF-8")
       (get-string-all port))))

#(define (extract-field content field-name)
   (let ((m (string-match (string-append "\n[ \t]*" field-name "[ \t]*=[ \t]*\"([^\"]*)\"")
                           (string-append "\n" content))))
     (if m (match:substring m 1) #f)))

#(define (find-matching-brace content open-index)
   (let loop ((i open-index) (depth 0) (in-string #f))
     (if (>= i (string-length content))
         (error "accolade non appariee")
         (let ((c (string-ref content i)))
           (cond
             (in-string
              (cond
                ((and (char=? c #\\) (< (+ i 1) (string-length content))) (loop (+ i 2) depth in-string))
                ((char=? c #\") (loop (+ i 1) depth #f))
                (else (loop (+ i 1) depth in-string))))
             ((char=? c #\") (loop (+ i 1) depth #t))
             ((char=? c #\{) (loop (+ i 1) (+ depth 1) in-string))
             ((char=? c #\}) (if (= depth 1) i (loop (+ i 1) (- depth 1) in-string)))
             (else (loop (+ i 1) depth in-string)))))))

#(define (extract-quoted-concat span)
   (apply string-append (map (lambda (pm) (match:substring pm 1)) (list-matches "\"([^\"]*)\"" span))))

#(define (join-with-slash strs)
   (if (null? strs)
       ""
       (let loop ((lst (cdr strs)) (acc (car strs)))
         (if (null? lst) acc (loop (cdr lst) (string-append acc " / " (car lst)))))))

#(define (extract-markup-field content field-name)
   (or (extract-field content field-name)
       (let ((m (string-match (string-append "\n[ \t]*" field-name "[ \t]*=[ \t]*\\\\markup[ \t]*\\{")
                               (string-append "\n" content))))
         (if (not m)
             #f
             (let* ((full (string-append "\n" content))
                    (open-idx (- (match:end m) 1))
                    (close-idx (find-matching-brace full open-idx))
                    (span (substring full open-idx (+ close-idx 1)))
                    (concat-matches (list-matches "\\\\concat[ \t]*\\{" span)))
               (if (null? concat-matches)
                   (join-with-slash
                     (map (lambda (pm) (match:substring pm 1)) (list-matches "\"([^\"]*)\"" span)))
                   (join-with-slash
                     (map (lambda (cm)
                            (let* ((c-open (- (match:end cm) 1))
                                   (c-close (find-matching-brace span c-open))
                                   (c-span (substring span c-open (+ c-close 1))))
                              (extract-quoted-concat c-span)))
                          concat-matches))))))))

#(define (extract-title content) (extract-markup-field content "title"))
#(define (extract-poet content) (extract-markup-field content "poet"))

#(define (extract-quoted-concat-runs span)
   ;; like extract-quoted-concat, but keeps track of which quoted parts were
   ;; wrapped in \small right before them, so the title can be re-rendered
   ;; with the same "(v. N)" small-size styling as the individual choral files.
   (map (lambda (pm)
          (let* ((start (match:start pm))
                 (prefix (substring span (max 0 (- start 12)) start)))
            (cons (if (string-match "\\\\small[ \t]*$" prefix) 'small 'plain)
                  (match:substring pm 1))))
        (list-matches "\"([^\"]*)\"" span)))

#(define (extract-title-runs content)
   (or (let ((plain (extract-field content "title")))
         (and plain (list (cons 'plain plain))))
       (let ((m (string-match "\n[ \t]*title[ \t]*=[ \t]*\\\\markup[ \t]*\\{"
                               (string-append "\n" content))))
         (and m
              (let* ((full (string-append "\n" content))
                     (open-idx (- (match:end m) 1))
                     (close-idx (find-matching-brace full open-idx))
                     (span (substring full open-idx (+ close-idx 1)))
                     (concat-matches (list-matches "\\\\concat[ \t]*\\{" span)))
                (if (null? concat-matches)
                    (extract-quoted-concat-runs span)
                    (let loop ((cms concat-matches) (first #t) (result '()))
                      (if (null? cms)
                          result
                          (let* ((cm (car cms))
                                 (c-open (- (match:end cm) 1))
                                 (c-close (find-matching-brace span c-open))
                                 (c-span (substring span c-open (+ c-close 1)))
                                 (runs (extract-quoted-concat-runs c-span)))
                            (loop (cdr cms) #f
                                  (append result (if first '() (list (cons 'plain " / "))) runs)))))))))))

#(define (runs->concat-markup runs)
   (apply string-append
     (map (lambda (r)
            (let ((text (escape-quotes (cdr r))))
              (if (eq? (car r) 'small)
                  (string-append " \\tiny \"" text "\"")
                  (string-append " \"" text "\""))))
          runs)))

#(define (strip-verse-marks s)
   (regexp-substitute/global #f "[ \t]*\\(v\\.[^)]*\\)" s 'pre 'post))

#(define (abbreviate-poet s)
   (regexp-substitute/global #f "Auteur[ \t]*:" s 'pre "Aut. :" 'post))

#(define (find-split-point text)
   (let ((m (string-match " : " text)))
     (if m
         (+ (match:start m) 2)
         (let* ((mid (quotient (string-length text) 2))
                (spaces (map match:start (list-matches " " text))))
           (if (null? spaces)
               #f
               (car (sort spaces (lambda (a b) (< (abs (- a mid)) (abs (- b mid)))))))))))

#(define (wrap-long-text text max-len)
   (if (<= (string-length text) max-len)
       (list text)
       (let ((sp (find-split-point text)))
         (if (not sp)
             (list text)
             (list (substring text 0 sp)
                   (substring text (if (char=? (string-ref text sp) #\space) (+ sp 1) sp)))))))

#(define (wrap-poet text)
   (let ((m (string-match " / " text)))
     (if m
         (list (substring text 0 (match:start m)) (substring text (match:end m)))
         (list text))))

#(define (small-lines lines)
   (apply string-append (map (lambda (l) (string-append " \\small \"" (escape-quotes l) "\"")) lines)))

#(define (extract-score-block content)
   (let ((m (string-match "\\\\score[ \t\n]*\\{" content)))
     (if (not m) #f
         (let* ((open-idx (- (match:end m) 1))
                (close-idx (find-matching-brace content open-idx)))
           (substring content (match:start m) (+ close-idx 1))))))

#(define (escape-quotes s)
   (list->string
     (fold-right (lambda (c acc) (if (char=? c #\") (cons #\\ (cons c acc)) (cons c acc)))
                 '() (string->list s))))

#(define (inject-header score-text piece-markup opus-field)
   (let* ((brace-idx (string-index score-text #\{))
          (before (substring score-text 0 (+ brace-idx 1)))
          (after (substring score-text (+ brace-idx 1))))
     (string-append before "\n  \\header { piece = " piece-markup " opus = " opus-field " }\n" after)))

#(define (natural-tokens s)
   (let loop ((i 0) (acc '()))
     (if (>= i (string-length s))
         (reverse acc)
         (let ((digit? (char-numeric? (string-ref s i))))
           (let scan ((j i))
             (if (and (< j (string-length s)) (eq? (char-numeric? (string-ref s j)) digit?))
                 (scan (+ j 1))
                 (loop j (cons (if digit? (string->number (substring s i j)) (substring s i j)) acc))))))))

#(define (natural<? a b)
   (let loop ((la (natural-tokens a)) (lb (natural-tokens b)))
     (cond
       ((and (null? la) (null? lb)) #f)
       ((null? la) #t)
       ((null? lb) #f)
       (else
        (let* ((x (car la)) (y (car lb)))
          (cond
            ((and (number? x) (number? y))
             (if (= x y) (loop (cdr la) (cdr lb)) (< x y)))
            (else
             (let ((sx (if (number? x) (number->string x) x))
                   (sy (if (number? y) (number->string y) y)))
               (if (string=? sx sy) (loop (cdr la) (cdr lb)) (string<? sx sy))))))))))

#(define (bwv-less? a b)
   (natural<? (or (assq-ref a 'opus) "") (or (assq-ref b 'opus) "")))

% --- Tune (timbre) specific machinery ---------------------------------------

% base filename -> tune index (0-based, alphabetical by tune title)
#(define tune-index-alist
   '(
    ("Ach,_lieben_Christen,_seid_getrost_(I)_(BWV_114_7)_Jean_Sébastien_Bach" . 203)
    ("Ach,_lieben_Christen,_seid_getrost_(II)_(BWV_256)_Jean_Sébastien_Bach" . 203)
    ("Ach,_was_soll_ich_Sünder_machen_(BWV_259)_Jean_Sébastien_Bach" . 5)
    ("Ach_Gott,_erhör_mein_Seufzen_und_Wehklagen_(BWV_254)_Jean_Sébastien_Bach" . 1)
    ("Ach_Gott,_vom_Himmel_sieh_darein_(BWV_2_6)_Jean_Sébastien_Bach" . 2)
    ("Ach_Gott,_wie_manches_Herzeleid_(I)_(BWV_3_6)_Jean_Sébastien_Bach" . 84)
    ("Ach_Gott,_wie_manches_Herzeleid_(II)_(BWV_153_9)_Jean_Sébastien_Bach" . 84)
    ("Ach_Gott_und_Herr_(I)_(BWV_48_3)_Jean_Sébastien_Bach" . 0)
    ("Ach_Gott_und_Herr_(II)_(BWV_255)_Jean_Sébastien_Bach" . 0)
    ("Ach_bleib_bei_uns,_Herr_Jesu_Christ_(BWV_253)_Jean_Sébastien_Bach" . 34)
    ("Ach_wie_flüchtig,_ach_wie_nichtig_(BWV_26_6)_Jean_Sébastien_Bach" . 4)
    ("Alle_Menschen_müssen_sterben_(BWV_262)_Jean_Sébastien_Bach" . 7)
    ("Allein_Gott_in_der_Höh_sei_Ehr_(BWV_260)_Jean_Sébastien_Bach" . 8)
    ("Allein_zu_dir,_Herr_Jesu_Christ_(I)_(BWV_33_6)_Jean_Sébastien_Bach" . 9)
    ("Allein_zu_dir,_Herr_Jesu_Christ_(II)_(BWV_261)_Jean_Sébastien_Bach" . 9)
    ("Alles_ist_an_Gottes_Segen_(BWV_263)_Jean_Sébastien_Bach" . 10)
    ("Als_Jesu_Christus_in_der_Nacht_(BWV_265)_Jean_Sébastien_Bach" . 12)
    ("Als_der_gütige_Gott_(BWV_264)_Jean_Sébastien_Bach" . 11)
    ("Als_vierzig_Tag_nach_Ostern_warn_(BWV_266)_Jean_Sébastien_Bach" . 55)
    ("An_Wasserflüssen_Babylon_(BWV_267)_Jean_Sébastien_Bach" . 13)
    ("Auf,_auf,_mein_Herz,_mit_Freuden_(BWV_441)_Jean_Sébastien_Bach" . 14)
    ("Auf,_auf,_mein_Herz,_und_du,_mein_ganzer_Sinn_(BWV_268)_Jean_Sébastien_Bach" . 15)
    ("Auf,_mein_Herz,_des_Herren_Tag_(BWV_145a)_Jean_Sébastien_Bach" . 122)
    ("Aus_meines_Herzens_Grunde_(BWV_269)_Jean_Sébastien_Bach" . 16)
    ("Aus_tiefer_Not_schrei_ich_zu_dir_(BWV_38_6)_Jean_Sébastien_Bach" . 17)
    ("Barmherzger_Vater,_höchster_Gott_(BWV_103_6)_Jean_Sébastien_Bach" . 188)
    ("Befiehl_du_deine_Wege_(I)_(BWV_153_5)_Jean_Sébastien_Bach" . 19)
    ("Befiehl_du_deine_Wege_(II)_(BWV_244_44)_Jean_Sébastien_Bach" . 19)
    ("Befiehl_du_deine_Wege_(III)_(BWV_270)_Jean_Sébastien_Bach" . 19)
    ("Befiehl_du_deine_Wege_(IV)_(BWV_271)_Jean_Sébastien_Bach" . 19)
    ("Befiehl_du_deine_Wege_(V)_(BWV_272)_Jean_Sébastien_Bach" . 20)
    ("Christ,_der_du_bist_der_helle_Tag_(BWV_273)_Jean_Sébastien_Bach" . 24)
    ("Christ_ist_erstanden_(BWV_276)_Jean_Sébastien_Bach" . 21)
    ("Christ_lag_in_Todesbanden_(I)_(BWV_4_8)_Jean_Sébastien_Bach" . 22)
    ("Christ_lag_in_Todesbanden_(II)_(BWV_277)_Jean_Sébastien_Bach" . 22)
    ("Christ_lag_in_Todesbanden_(III)_(BWV_278)_Jean_Sébastien_Bach" . 22)
    ("Christ_lag_in_Todesbanden_(IV)_(BWV_279)_Jean_Sébastien_Bach" . 22)
    ("Christ_unser_Herr_zum_Jordan_kam_(BWV_280)_Jean_Sébastien_Bach" . 23)
    ("Christe,_der_du_bist_Tag_und_Licht_(BWV_274)_Jean_Sébastien_Bach" . 25)
    ("Christe,_du_Beistand_(BWV_275)_Jean_Sébastien_Bach" . 26)
    ("Christum_wir_sollen_loben_schon_(BWV_121_6)_Jean_Sébastien_Bach" . 27)
    ("Christus,_der_ist_mein_Leben_(I)_(BWV_281)_Jean_Sébastien_Bach" . 29)
    ("Christus,_der_ist_mein_Leben_(II)_(BWV_282)_Jean_Sébastien_Bach" . 29)
    ("Christus,_der_uns_selig_macht_(I)_(BWV_245_15)_Jean_Sébastien_Bach" . 30)
    ("Christus,_der_uns_selig_macht_(II)_(BWV_245_37)_Jean_Sébastien_Bach" . 30)
    ("Christus,_der_uns_selig_macht_(III)_(BWV_283)_Jean_Sébastien_Bach" . 30)
    ("Christus,_der_uns_selig_macht_(IV)_(BWV_1084)_Jean_Sébastien_Bach" . 30)
    ("Christus_ist_erstanden,_hat_überwunden_(BWV_284)_Jean_Sébastien_Bach" . 28)
    ("Da_Jesus_an_dem_Kreuze_stund_(BWV_1089)_Jean_Sébastien_Bach" . 106)
    ("Da_der_Herr_Christ_zu_Tische_saß_(BWV_285)_Jean_Sébastien_Bach" . 32)
    ("Dank_sei_Gott_in_der_Höhe_(BWV_287)_Jean_Sébastien_Bach" . 118)
    ("Danket_dem_Herrn,_denn_er_ist_sehr_freundlich_(BWV_286)_Jean_Sébastien_Bach" . 33)
    ("Das_alte_Jahr_vergangen_ist_(I)_(BWV_288)_Jean_Sébastien_Bach" . 35)
    ("Das_alte_Jahr_vergangen_ist_(II)_(BWV_289)_Jean_Sébastien_Bach" . 35)
    ("Das_neugeborne_Kindelein_(BWV_122_6)_Jean_Sébastien_Bach" . 36)
    ("Das_walt_Gott_Vater_und_Gott_Sohn_(BWV_290)_Jean_Sébastien_Bach" . 37)
    ("Das_walt_mein_Gott,_Vater,_Sohn_und_heiliger_Geist_(BWV_291)_Jean_Sébastien_Bach" . 38)
    ("Den_Vater_dort_oben_(BWV_292)_Jean_Sébastien_Bach" . 39)
    ("Der_Herr_ist_mein_getreuer_Hirt_(I)_(BWV_104_6)_Jean_Sébastien_Bach" . 8)
    ("Der_Herr_ist_mein_getreuer_Hirt_(II)_(BWV_112_5)_Jean_Sébastien_Bach" . 8)
    ("Der_Tag,_der_ist_so_freudenreich_(BWV_294)_Jean_Sébastien_Bach" . 41)
    ("Der_du_bist_drei_in_Einigkeit_(BWV_293)_Jean_Sébastien_Bach" . 40)
    ("Des_Heilgen_Geistes_reiche_Gnad_(BWV_295)_Jean_Sébastien_Bach" . 42)
    ("Die_Nacht_ist_kommen_(BWV_296)_Jean_Sébastien_Bach" . 43)
    ("Die_Sonn_hat_sich_mit_ihrem_Glanz_gewendet_(BWV_297)_Jean_Sébastien_Bach" . 162)
    ("Dies_sind_die_heilgen_zehn_Gebot_(BWV_298)_Jean_Sébastien_Bach" . 108)
    ("Du,_o_schönes_Weltgebäude_(I)_(BWV_56_5)_Jean_Sébastien_Bach" . 45)
    ("Du,_o_schönes_Weltgebäude_(II)_(BWV_301)_Jean_Sébastien_Bach" . 45)
    ("Du_Friedefürst,_Herr_Jesu_Christ_(BWV_67_7)_Jean_Sébastien_Bach" . 44)
    ("Du_Lebensfürst,_Herr_Jesu_Christ_(I)_(BWV_11_6)_Jean_Sébastien_Bach" . 54)
    ("Du_Lebensfürst,_Herr_Jesu_Christ_(II)_(BWV_43_11)_Jean_Sébastien_Bach" . 54)
    ("Du_großer_Schmerzensmann_(BWV_300)_Jean_Sébastien_Bach" . 46)
    ("Durch_Adams_Fall_ist_ganz_verderbt_[de]_(BWV_18_5)_Jean_Sébastien_Bach" . 47)
    ("Durch_dein_Gefängnis,_Gottes_Sohn_(1_v.)_(BWV_245_22)_Jean_Sébastien_Bach" . 136)
    ("Ein_Kind_geborn_zu_Bethlehem_(BWV_65_2)_Jean_Sébastien_Bach" . 49)
    ("Ein_feste_Burg_ist_unser_Gott_(I)_(BWV_80_8)_Jean_Sébastien_Bach" . 48)
    ("Ein_feste_Burg_ist_unser_Gott_(II)_(BWV_302)_Jean_Sébastien_Bach" . 48)
    ("Ein_feste_Burg_ist_unser_Gott_(III)_(BWV_303)_Jean_Sébastien_Bach" . 48)
    ("Eins_ist_not,_ach_Herr,_dies_Eine_(BWV_304)_Jean_Sébastien_Bach" . 51)
    ("Erbarm_dich_mein,_o_Herre_Gott_(BWV_305)_Jean_Sébastien_Bach" . 52)
    ("Erhalt_uns,_Herr,_bei_deinem_Wort_(BWV_6_6)_Jean_Sébastien_Bach" . 53)
    ("Ermuntre_dich,_mein_schwacher_Geist_(BWV_248_12)_Jean_Sébastien_Bach" . 54)
    ("Erschienen_ist_der_herrlich_Tag_(BWV_145_5)_Jean_Sébastien_Bach" . 55)
    ("Erstanden_ist_der_heilig_Christ_(BWV_306)_Jean_Sébastien_Bach" . 56)
    ("Es_ist_das_Heil_uns_kommen_her_(I)_(BWV_9_7)_Jean_Sébastien_Bach" . 57)
    ("Es_ist_das_Heil_uns_kommen_her_(II)_(BWV_86_6)_Jean_Sébastien_Bach" . 57)
    ("Es_ist_das_Heil_uns_kommen_her_(III)_(BWV_155_5)_Jean_Sébastien_Bach" . 57)
    ("Es_ist_genug_(BWV_60_5)_Jean_Sébastien_Bach" . 58)
    ("Es_ist_gewisslich_an_der_Zeit_(BWV_307)_Jean_Sébastien_Bach" . 149)
    ("Es_spricht_der_Unweisen_Mund_wohl_(BWV_308)_Jean_Sébastien_Bach" . 60)
    ("Es_stehn_vor_Gottes_Throne_(BWV_309)_Jean_Sébastien_Bach" . 61)
    ("Es_wird_schier_der_letzte_Tag_herkommen_(BWV_310)_Jean_Sébastien_Bach" . 62)
    ("Es_woll_uns_Gott_genädig_sein_(I)_(BWV_69_6)_Jean_Sébastien_Bach" . 63)
    ("Es_woll_uns_Gott_genädig_sein_(II)_(BWV_311)_Jean_Sébastien_Bach" . 63)
    ("Es_woll_uns_Gott_genädig_sein_(III)_(BWV_312)_Jean_Sébastien_Bach" . 63)
    ("Freu_dich_sehr,_o_meine_Seele_(BWV_19_7)_Jean_Sébastien_Bach" . 64)
    ("Freuet_euch,_ihr_Christen_alle_(BWV_40_8)_Jean_Sébastien_Bach" . 65)
    ("Fröhlich_soll_mein_Herze_springen_(BWV_248_33)_Jean_Sébastien_Bach" . 184)
    ("Für_Freuden_lasst_uns_springen_(BWV_313)_Jean_Sébastien_Bach" . 181)
    ("Gelobet_seist_du,_Jesu_Christ_(I)_(BWV_64_2)_Jean_Sébastien_Bach" . 66)
    ("Gelobet_seist_du,_Jesu_Christ_(II)_(BWV_91_6)_Jean_Sébastien_Bach" . 66)
    ("Gelobet_seist_du,_Jesu_Christ_(III)_(BWV_314)_Jean_Sébastien_Bach" . 66)
    ("Gib_dich_zufrieden_und_sei_stille_(BWV_315)_Jean_Sébastien_Bach" . 67)
    ("Gott,_der_du_selber_bist_das_Licht_(BWV_316)_Jean_Sébastien_Bach" . 73)
    ("Gott_Vater,_sende_deinen_Geist_(I)_(BWV_74_8)_Jean_Sébastien_Bach" . 126)
    ("Gott_Vater,_sende_deinen_Geist_(II)_(BWV_108_6)_Jean_Sébastien_Bach" . 126)
    ("Gott_der_Vater_wohn_uns_bei_(BWV_317)_Jean_Sébastien_Bach" . 68)
    ("Gott_hat_das_Evangelium_(BWV_319)_Jean_Sébastien_Bach" . 70)
    ("Gott_lebet_noch_(BWV_320)_Jean_Sébastien_Bach" . 71)
    ("Gott_sei_gelobet_und_gebenedeiet_(BWV_322)_Jean_Sébastien_Bach" . 72)
    ("Gott_sei_uns_gnädig_und_barmherzig_(BWV_323)_Jean_Sébastien_Bach" . 139)
    ("Gottes_Sohn_ist_kommen_(BWV_318)_Jean_Sébastien_Bach" . 142)
    ("Gottlob,_es_geht_nunmehr_zum_Ende_(BWV_321)_Jean_Sébastien_Bach" . 74)
    ("Hast_du_denn,_Jesu,_dein_Angesicht_gänzlich_verborgen_(BWV_57_8)_Jean_Sébastien_Bach" . 75)
    ("Heilig,_heilig_(BWV_325)_Jean_Sébastien_Bach" . 76)
    ("Helft_mir_Gotts_Güte_preisen_(I)_(BWV_16_6)_Jean_Sébastien_Bach" . 77)
    ("Helft_mir_Gotts_Güte_preisen_(II)_(BWV_28_6)_Jean_Sébastien_Bach" . 77)
    ("Herr,_ich_denk_an_jene_Zeit_(BWV_329)_Jean_Sébastien_Bach" . 134)
    ("Herr,_ich_habe_missgehandelt_(I)_(BWV_330)_Jean_Sébastien_Bach" . 86)
    ("Herr,_ich_habe_missgehandelt_(II)_(BWV_331)_Jean_Sébastien_Bach" . 86)
    ("Herr,_nun_lass_in_Friede_(BWV_337)_Jean_Sébastien_Bach" . 88)
    ("Herr,_straf_mich_nicht_in_deinem_Zorn_(BWV_338)_Jean_Sébastien_Bach" . 89)
    ("Herr,_wie_du_willst,_so_schicks_mit_mir_(BWV_156_6)_Jean_Sébastien_Bach" . 18)
    ("Herr_Christ,_der_einge_Gottessohn_(I)_(BWV_96_6)_Jean_Sébastien_Bach" . 78)
    ("Herr_Christ,_der_einge_Gottessohn_(II)_(BWV_164_6)_Jean_Sébastien_Bach" . 78)
    ("Herr_Gott,_dich_loben_alle_wir_(BWV_326)_Jean_Sébastien_Bach" . 79)
    ("Herr_Gott,_dich_loben_wir_(BWV_328)_Jean_Sébastien_Bach" . 80)
    ("Herr_Jesu_Christ,_dich_zu_uns_wend_(BWV_332)_Jean_Sébastien_Bach" . 87)
    ("Herr_Jesu_Christ,_du_hast_bereit'_(BWV_333)_Jean_Sébastien_Bach" . 81)
    ("Herr_Jesu_Christ,_du_höchstes_Gut_(I)_(BWV_113_8)_Jean_Sébastien_Bach" . 82)
    ("Herr_Jesu_Christ,_du_höchstes_Gut_(II)_(BWV_168_6)_Jean_Sébastien_Bach" . 82)
    ("Herr_Jesu_Christ,_ich_schrei_zu_dir_(I)_(BWV_48_7)_Jean_Sébastien_Bach" . 82)
    ("Herr_Jesu_Christ,_ich_schrei_zu_dir_(II)_(BWV_334)_Jean_Sébastien_Bach" . 82)
    ("Herr_Jesu_Christ,_meins_Lebens_Licht_(BWV_335)_Jean_Sébastien_Bach" . 83)
    ("Herr_Jesu_Christ,_wahr_Mensch_und_Gott_(I)_(BWV_127_5)_Jean_Sébastien_Bach" . 192)
    ("Herr_Jesu_Christ,_wahr_Mensch_und_Gott_(II)_(BWV_336)_Jean_Sébastien_Bach" . 85)
    ("Herzlich_lieb_hab_ich_dich,_o_Herr_(I)_(BWV_174_5)_Jean_Sébastien_Bach" . 90)
    ("Herzlich_lieb_hab_ich_dich,_o_Herr_(II)_(BWV_245_40)_Jean_Sébastien_Bach" . 90)
    ("Herzlich_lieb_hab_ich_dich,_o_Herr_(III)_(BWV_340)_Jean_Sébastien_Bach" . 90)
    ("Herzlich_tut_mich_verlangen_(BWV_161_6)_Jean_Sébastien_Bach" . 19)
    ("Herzliebster_Jesu,_was_hast_du_verbrochen_(I)_(BWV_245_3a)_Jean_Sébastien_Bach" . 91)
    ("Herzliebster_Jesu,_was_hast_du_verbrochen_(II)_(BWV_245_3b)_Jean_Sébastien_Bach" . 91)
    ("Herzliebster_Jesu_(I)_(BWV_244_3)_Jean_Sébastien_Bach" . 91)
    ("Herzliebster_Jesu_(II)_(BWV_244_46)_Jean_Sébastien_Bach" . 91)
    ("Herzliebster_Jesu_(III)_(BWV_245_17)_Jean_Sébastien_Bach" . 91)
    ("Heut_ist,_o_Mensch,_ein_großer_Trauertag_(BWV_341)_Jean_Sébastien_Bach" . 93)
    ("Heut_triumphieret_Gottes_Sohn_(BWV_342)_Jean_Sébastien_Bach" . 94)
    ("Hilf,_Gott,_dass_mirs_gelinge_(BWV_343)_Jean_Sébastien_Bach" . 95)
    ("Hilf,_Herr_Jesu,_lass_gelingen_(II)_(BWV_344)_Jean_Sébastien_Bach" . 96)
    ("Ich_armer_Mensch,_ich_armer_Sünder_(BWV_179_6)_Jean_Sébastien_Bach" . 197)
    ("Ich_bin_ja,_Herr,_in_deiner_Macht_(BWV_345)_Jean_Sébastien_Bach" . 97)
    ("Ich_dank_dir,_Gott,_für_deine_Wohltat_(BWV_346)_Jean_Sébastien_Bach" . 98)
    ("Ich_dank_dir,_lieber_Herre_(I)_(BWV_37_6)_Jean_Sébastien_Bach" . 99)
    ("Ich_dank_dir,_lieber_Herre_(II)_(BWV_347)_Jean_Sébastien_Bach" . 99)
    ("Ich_dank_dir,_lieber_Herre_(III)_(BWV_348)_Jean_Sébastien_Bach" . 99)
    ("Ich_dank_dir_schon_durch_deinen_Sohn_(BWV_349)_Jean_Sébastien_Bach" . 3)
    ("Ich_danke_dir,_Herr_Gott,_in_deinem_Throne_(BWV_350)_Jean_Sébastien_Bach" . 138)
    ("Ich_freue_mich_in_dir_(BWV_133_6)_Jean_Sébastien_Bach" . 158)
    ("Ich_hab_in_Gottes_Herz_und_Sinn_(BWV_65_7)_Jean_Sébastien_Bach" . 188)
    ("Ich_hab_mein_Sach_Gott_heimgestellt_(BWV_351)_Jean_Sébastien_Bach" . 100)
    ("Ich_ruf_zu_dir,_Herr_Jesu_Christ_(I)_(BWV_177_5)_Jean_Sébastien_Bach" . 101)
    ("Ich_ruf_zu_dir,_Herr_Jesu_Christ_(II)_(BWV_1124)_Jean_Sébastien_Bach" . 101)
    ("Ich_steh_an_deiner_Krippen_hier_(BWV_248_59)_Jean_Sébastien_Bach" . 149)
    ("Ihr_Gestirn,_ihr_hohlen_Lüfte_(I)_(BWV_248_53)_Jean_Sébastien_Bach" . 69)
    ("Ihr_Gestirn,_ihr_hohlen_Lüfte_(II)_(BWV_366)_Jean_Sébastien_Bach" . 102)
    ("In_allen_meinen_Taten_(I)_(BWV_13_6)_Jean_Sébastien_Bach" . 166)
    ("In_allen_meinen_Taten_(II)_(BWV_44_7)_Jean_Sébastien_Bach" . 166)
    ("In_allen_meinen_Taten_(III)_(BWV_367)_Jean_Sébastien_Bach" . 104)
    ("In_dich_hab_ich_gehoffet,_Herr_(BWV_244_32)_Jean_Sébastien_Bach" . 105)
    ("In_dulci_jubilo_(BWV_368)_Jean_Sébastien_Bach" . 107)
    ("Ist_Gott_mein_Schild_und_Helfersmann_(BWV_85_6)_Jean_Sébastien_Bach" . 109)
    ("Jesu,_Jesu,_du_bist_mein_(BWV_357)_Jean_Sébastien_Bach" . 114)
    ("Jesu,_der_du_meine_Seele_(I)_(BWV_78_7)_Jean_Sébastien_Bach" . 111)
    ("Jesu,_der_du_meine_Seele_(II)_(BWV_352)_Jean_Sébastien_Bach" . 111)
    ("Jesu,_der_du_meine_Seele_(III)_(BWV_353)_Jean_Sébastien_Bach" . 111)
    ("Jesu,_der_du_meine_Seele_(IV)_(BWV_354)_Jean_Sébastien_Bach" . 111)
    ("Jesu,_der_du_selbsten_wohl_(BWV_355)_Jean_Sébastien_Bach" . 112)
    ("Jesu,_du_mein_liebstes_Leben_(BWV_356)_Jean_Sébastien_Bach" . 113)
    ("Jesu,_meine_Freude_(I)_(BWV_64_8)_Jean_Sébastien_Bach" . 115)
    ("Jesu,_meine_Freude_(II)_(BWV_81_7)_Jean_Sébastien_Bach" . 115)
    ("Jesu,_meine_Freude_(III)_(BWV_227_1)_Jean_Sébastien_Bach" . 115)
    ("Jesu,_meine_Freude_(IV)_(BWV_227_7)_Jean_Sébastien_Bach" . 115)
    ("Jesu,_meine_Freude_(V)_(BWV_358)_Jean_Sébastien_Bach" . 115)
    ("Jesu,_meiner_Seelen_Wonne_(I)_(BWV_154_3)_Jean_Sébastien_Bach" . 198)
    ("Jesu,_meiner_Seelen_Wonne_(II)_(BWV_359)_Jean_Sébastien_Bach" . 198)
    ("Jesu,_meiner_Seelen_Wonne_(III)_(BWV_360)_Jean_Sébastien_Bach" . 198)
    ("Jesu,_meines_Herzens_Freud_(BWV_361)_Jean_Sébastien_Bach" . 116)
    ("Jesu,_nun_sei_gepreiset_(I)_(BWV_41_6)_Jean_Sébastien_Bach" . 117)
    ("Jesu,_nun_sei_gepreiset_(II)_(BWV_190_7)_Jean_Sébastien_Bach" . 117)
    ("Jesu,_nun_sei_gepreiset_(III)_(BWV_362)_Jean_Sébastien_Bach" . 117)
    ("Jesu_Leiden,_Pein_und_Tod_(I)_(BWV_159_5)_Jean_Sébastien_Bach" . 110)
    ("Jesu_Leiden,_Pein_und_Tod_(II)_(BWV_245_14)_Jean_Sébastien_Bach" . 110)
    ("Jesu_Leiden,_Pein_und_Tod_(III)_(BWV_245_28)_Jean_Sébastien_Bach" . 110)
    ("Jesus,_meine_Zuversicht_(BWV_365)_Jean_Sébastien_Bach" . 122)
    ("Jesus_Christus,_unser_Heiland,_der_den_Tod_überwand_(BWV_364)_Jean_Sébastien_Bach" . 119)
    ("Jesus_Christus,_unser_Heiland,_der_von_uns_den_Gottes_Zorn_wandt_(BWV_363)_Jean_Sébastien_Bach" . 120)
    ("Keinen_hat_Gott_verlassen_(BWV_369)_Jean_Sébastien_Bach" . 123)
    ("Komm,_Gott_Schöpfer,_Heiliger_Geist_(BWV_370)_Jean_Sébastien_Bach" . 124)
    ("Komm,_Heiliger_Geist,_Herre_Gott_(BWV_226_2)_Jean_Sébastien_Bach" . 125)
    ("Kommt,_lasst_euch_den_Herren_lehren_(BWV_39_7)_Jean_Sébastien_Bach" . 64)
    ("Kyrie,_Gott_Vater_in_Ewigkeit_(choral)_(BWV_371)_Jean_Sébastien_Bach" . 128)
    ("Lass,_o_Herr,_dein_Ohr_sich_neigen_(BWV_372)_Jean_Sébastien_Bach" . 129)
    ("Lasst_Furcht_und_Pein_(BWV_248_35)_Jean_Sébastien_Bach" . 201)
    ("Liebster_Gott,_wenn_werd_ich_sterben_(BWV_8_6)_Jean_Sébastien_Bach" . 131)
    ("Liebster_Immanuel,_Herzog_der_Frommen_(BWV_123_6)_Jean_Sébastien_Bach" . 132)
    ("Liebster_Jesu,_wir_sind_hier_(BWV_373)_Jean_Sébastien_Bach" . 133)
    ("Lobet_Gott,_unsern_Herren_(BWV_1126)_Jean_Sébastien_Bach" . 20)
    ("Lobet_den_Herren,_denn_er_ist_sehr_freundlich_(BWV_374)_Jean_Sébastien_Bach" . 135)
    ("Lobt_Gott,_ihr_Christen,_allzugleich_(I)_(BWV_151_5)_Jean_Sébastien_Bach" . 127)
    ("Lobt_Gott,_ihr_Christen,_allzugleich_(II)_(BWV_375)_Jean_Sébastien_Bach" . 127)
    ("Lobt_Gott,_ihr_Christen,_allzugleich_(III)_(BWV_376)_Jean_Sébastien_Bach" . 127)
    ("Mache_dich,_mein_Geist,_bereit_(BWV_115_6)_Jean_Sébastien_Bach" . 175)
    ("Machs_mit_mir,_Gott,_nach_deiner_Güt_(BWV_377)_Jean_Sébastien_Bach" . 136)
    ("Mein_Augen_schließ_ich_jetzt_in_Gottes_Namen_zu_(BWV_378)_Jean_Sébastien_Bach" . 137)
    ("Meine_Seele_erhebt_den_Herren_(I)_(BWV_10_7)_Jean_Sébastien_Bach" . 139)
    ("Meine_Seele_erhebt_den_Herren_(II)_(BWV_324)_Jean_Sébastien_Bach" . 139)
    ("Meinen_Jesum_lass_ich_nicht_(I)_(BWV_70_11)_Jean_Sébastien_Bach" . 140)
    ("Meinen_Jesum_lass_ich_nicht_(II)_(BWV_154_8)_Jean_Sébastien_Bach" . 140)
    ("Meinen_Jesum_lass_ich_nicht_(III)_(BWV_379)_Jean_Sébastien_Bach" . 121)
    ("Meinen_Jesum_lass_ich_nicht_(IV)_(BWV_380)_Jean_Sébastien_Bach" . 140)
    ("Meines_Lebens_letzte_Zeit_(BWV_381)_Jean_Sébastien_Bach" . 141)
    ("Mit_Fried_und_Freud_ich_fahr_dahin_(I)_(BWV_83_5)_Jean_Sébastien_Bach" . 143)
    ("Mit_Fried_und_Freud_ich_fahr_dahin_(II)_(BWV_382)_Jean_Sébastien_Bach" . 143)
    ("Mitten_wir_im_Leben_sind_(BWV_383)_Jean_Sébastien_Bach" . 144)
    ("Nicht_so_traurig,_nicht_so_sehr_(BWV_384)_Jean_Sébastien_Bach" . 145)
    ("Nimm_von_uns,_Herr,_du_treuer_Gott_(I)_(BWV_90_5)_Jean_Sébastien_Bach" . 177)
    ("Nimm_von_uns,_Herr,_du_treuer_Gott_(II)_(BWV_101_7)_Jean_Sébastien_Bach" . 177)
    ("Nun,_liebe_Seel,_nun_ist_es_Zeit_(BWV_248_46)_Jean_Sébastien_Bach" . 105)
    ("Nun_bitten_wir_den_Heiligen_Geist_(I)_(BWV_169_7)_Jean_Sébastien_Bach" . 146)
    ("Nun_bitten_wir_den_Heiligen_Geist_(II)_(BWV_197_5)_Jean_Sébastien_Bach" . 146)
    ("Nun_bitten_wir_den_Heiligen_Geist_(III)_(BWV_385)_Jean_Sébastien_Bach" . 146)
    ("Nun_danket_alle_Gott_(I)_(BWV_252)_Jean_Sébastien_Bach" . 147)
    ("Nun_danket_alle_Gott_(II)_(BWV_386)_Jean_Sébastien_Bach" . 147)
    ("Nun_freut_euch,_Gottes_Kinder_all_(BWV_387)_Jean_Sébastien_Bach" . 103)
    ("Nun_freut_euch,_lieben_Christen_gmein_(BWV_388)_Jean_Sébastien_Bach" . 148)
    ("Nun_komm,_der_Heiden_Heiland_(I)_(BWV_36_8)_Jean_Sébastien_Bach" . 150)
    ("Nun_komm,_der_Heiden_Heiland_(II)_(BWV_62_6)_Jean_Sébastien_Bach" . 150)
    ("Nun_lob,_mein_Seel,_den_Herren_(I)_(BWV_17_7)_Jean_Sébastien_Bach" . 152)
    ("Nun_lob,_mein_Seel,_den_Herren_(II)_(BWV_29_8)_Jean_Sébastien_Bach" . 152)
    ("Nun_lob,_mein_Seel,_den_Herren_(III)_(BWV_389)_Jean_Sébastien_Bach" . 152)
    ("Nun_lob,_mein_Seel,_den_Herren_(IV)_(BWV_390)_Jean_Sébastien_Bach" . 152)
    ("Nun_preiset_alle_Gottes_Barmherzigkeit_(BWV_391)_Jean_Sébastien_Bach" . 153)
    ("Nun_ruhen_alle_Wälder_(BWV_392)_Jean_Sébastien_Bach" . 166)
    ("Nun_sich_der_Tag_geendet_hat_(BWV_396)_Jean_Sébastien_Bach" . 154)
    ("O_Ewigkeit,_du_Donnerwort_(I)_(BWV_20_7_11)_Jean_Sébastien_Bach" . 155)
    ("O_Ewigkeit,_du_Donnerwort_(II)_(BWV_397)_Jean_Sébastien_Bach" . 155)
    ("O_Gott,_du_frommer_Gott_(I)_(BWV_24_6)_Jean_Sébastien_Bach" . 156)
    ("O_Gott,_du_frommer_Gott_(II)_(BWV_45_7)_Jean_Sébastien_Bach" . 157)
    ("O_Gott,_du_frommer_Gott_(III)_(BWV_398)_Jean_Sébastien_Bach" . 157)
    ("O_Gott,_du_frommer_Gott_(IV)_(BWV_399)_Jean_Sébastien_Bach" . 156)
    ("O_Gott,_du_frommer_Gott_(V)_(BWV_1125)_Jean_Sébastien_Bach" . 157)
    ("O_Haupt_voll_Blut_und_Wunden_(I)_(BWV_244_15)_Jean_Sébastien_Bach" . 19)
    ("O_Haupt_voll_Blut_und_Wunden_(II)_(BWV_244_54)_Jean_Sébastien_Bach" . 19)
    ("O_Haupt_voll_Blut_und_Wunden_(III)_(BWV_244_62)_Jean_Sébastien_Bach" . 19)
    ("O_Herre_Gott,_dein_göttlich_Wort_(BWV_184_5)_Jean_Sébastien_Bach" . 160)
    ("O_Herzensangst_(BWV_400)_Jean_Sébastien_Bach" . 161)
    ("O_Lamm_Gottes,_unschuldig_(BWV_401)_Jean_Sébastien_Bach" . 163)
    ("O_Mensch,_bewein_dein_Sünde_groß_(BWV_402)_Jean_Sébastien_Bach" . 59)
    ("O_Mensch,_schau_Jesum_Christum_an_(BWV_403)_Jean_Sébastien_Bach" . 164)
    ("O_Traurigkeit,_o_Herzeleid!_(I)_(BWV_404)_Jean_Sébastien_Bach" . 165)
    ("O_Welt,_sieh_hier_dein_Leben_(I)_(BWV_244_10)_Jean_Sébastien_Bach" . 166)
    ("O_Welt,_sieh_hier_dein_Leben_(II)_(BWV_244_37)_Jean_Sébastien_Bach" . 166)
    ("O_Welt,_sieh_hier_dein_Leben_(III)_(BWV_245_11)_Jean_Sébastien_Bach" . 166)
    ("O_Welt,_sieh_hier_dein_Leben_(IV)_(BWV_393)_Jean_Sébastien_Bach" . 166)
    ("O_Welt,_sieh_hier_dein_Leben_(V)_(BWV_394)_Jean_Sébastien_Bach" . 166)
    ("O_Welt,_sieh_hier_dein_Leben_(VI)_(BWV_395)_Jean_Sébastien_Bach" . 166)
    ("O_großer_Gott_von_Macht_(BWV_46_6)_Jean_Sébastien_Bach" . 159)
    ("O_wie_selig_seid_ihr_doch,_ihr_Frommen_(I)_(BWV_405)_Jean_Sébastien_Bach" . 168)
    ("O_wie_selig_seid_ihr_doch,_ihr_Frommen_(II)_(BWV_406)_Jean_Sébastien_Bach" . 6)
    ("O_wir_armen_Sünder!_(BWV_407)_Jean_Sébastien_Bach" . 167)
    ("Schau,_lieber_Gott,_wie_meine_Feind_(BWV_153_1)_Jean_Sébastien_Bach" . 2)
    ("Schaut,_ihr_Sünder_(BWV_408)_Jean_Sébastien_Bach" . 92)
    ("Schmücke_dich,_o_liebe_Seele_(BWV_180_7)_Jean_Sébastien_Bach" . 169)
    ("Schwing_dich_auf_zu_deinem_Gott_(BWV_40_6)_Jean_Sébastien_Bach" . 50)
    ("Seelenbräutigam_(BWV_409)_Jean_Sébastien_Bach copie" . 170)
    ("Sei_Lob_und_Ehr_dem_höchsten_Gut_(I)_(BWV_117_4_9)_Jean_Sébastien_Bach" . 57)
    ("Sei_Lob_und_Ehr_dem_höchsten_Gut_(II)_(BWV_251)_Jean_Sébastien_Bach" . 57)
    ("Sei_gegrüßet,_Jesu_gütig_(BWV_410)_Jean_Sébastien_Bach" . 171)
    ("Selig_ist_die_Seele_(BWV_87_7)_Jean_Sébastien_Bach" . 115)
    ("Singen_wir_aus_Herzensgrund_(BWV_187_7)_Jean_Sébastien_Bach" . 31)
    ("Singt_dem_Herrn_ein_neues_Lied_(BWV_411)_Jean_Sébastien_Bach" . 172)
    ("So_gehst_du_nun,_mein_Jesu,_hin_(BWV_500a)_Jean_Sébastien_Bach" . 173)
    ("So_gibst_du_nun,_mein_Jesu,_gute_Nacht!_(BWV_412)_Jean_Sébastien_Bach" . 174)
    ("So_wahr_ich_lebe,_spricht_dein_Gott_(BWV_102_7)_Jean_Sébastien_Bach" . 177)
    ("Sollt_ich_meinem_Gott_nicht_singen_(BWV_413)_Jean_Sébastien_Bach" . 130)
    ("Treuer_Gott,_ich_muss_dir_klagen_(I)_(BWV_25_6)_Jean_Sébastien_Bach" . 64)
    ("Treuer_Gott,_ich_muss_dir_klagen_(II)_(BWV_194_6)_Jean_Sébastien_Bach" . 64)
    ("Tröstet,_tröstet_meine_Lieben_(BWV_30_6)_Jean_Sébastien_Bach" . 64)
    ("Uns_ist_ein_Kindlein_heut_geborn_(BWV_414)_Jean_Sébastien_Bach" . 34)
    ("Valet_will_ich_dir_geben_(I)_(BWV_245_26)_Jean_Sébastien_Bach" . 176)
    ("Valet_will_ich_dir_geben_(II)_(BWV_415)_Jean_Sébastien_Bach" . 176)
    ("Vater_unser_im_Himmelreich_(I)_(BWV_245_5a)_Jean_Sébastien_Bach" . 177)
    ("Vater_unser_im_Himmelreich_(II)_(BWV_245_5b)_Jean_Sébastien_Bach" . 177)
    ("Vater_unser_im_Himmelreich_(III)_(BWV_416)_Jean_Sébastien_Bach" . 177)
    ("Verleih_uns_Frieden_gnädlich_(I)_(BWV_42_7)_Jean_Sébastien_Bach" . 178)
    ("Verleih_uns_Frieden_gnädlich_(II)_(BWV_126_6)_Jean_Sébastien_Bach" . 178)
    ("Vom_Himmel_hoch,_da_komm_ich_her_(BWV_248_9)_Jean_Sébastien_Bach" . 179)
    ("Von_Gott_will_ich_nicht_lassen_(I)_(BWV_73_5)_Jean_Sébastien_Bach" . 180)
    ("Von_Gott_will_ich_nicht_lassen_(II)_(BWV_417)_Jean_Sébastien_Bach" . 180)
    ("Von_Gott_will_ich_nicht_lassen_(III)_(BWV_418)_Jean_Sébastien_Bach" . 180)
    ("Von_Gott_will_ich_nicht_lassen_(IV)_(BWV_419)_Jean_Sébastien_Bach" . 180)
    ("Vor_deinen_Thron_tret_ich_hiermit_(BWV_327)_Jean_Sébastien_Bach" . 79)
    ("Wach_auf,_mein_Herz,_und_singe_(BWV_194_12)_Jean_Sébastien_Bach" . 151)
    ("Wachet_auf,_ruft_uns_die_Stimme_(BWV_140_7)_Jean_Sébastien_Bach" . 182)
    ("Warum_betrübst_du_dich,_mein_Herz_(I)_(BWV_47_5)_Jean_Sébastien_Bach" . 183)
    ("Warum_betrübst_du_dich,_mein_Herz_(II)_(BWV_420)_Jean_Sébastien_Bach" . 183)
    ("Warum_betrübst_du_dich,_mein_Herz_(III)_(BWV_421)_Jean_Sébastien_Bach" . 183)
    ("Warum_sollt_ich_mich_denn_grämen_(BWV_422)_Jean_Sébastien_Bach" . 184)
    ("Was_Gott_tut,_das_ist_wohlgetan_(I)_(BWV_69a_6)_Jean_Sébastien_Bach" . 187)
    ("Was_Gott_tut,_das_ist_wohlgetan_(II)_(BWV_144_3)_Jean_Sébastien_Bach" . 187)
    ("Was_Gott_tut,_das_ist_wohlgetan_(III)_(BWV_250)_Jean_Sébastien_Bach" . 187)
    ("Was_alle_Weisheit_in_der_Welt_(BWV_176_6)_Jean_Sébastien_Bach" . 23)
    ("Was_betrübst_du_dich,_mein_Herz_(BWV_423)_Jean_Sébastien_Bach" . 185)
    ("Was_bist_du_doch,_o_Seele,_so_betrübet_(BWV_424)_Jean_Sébastien_Bach" . 186)
    ("Was_frag_ich_nach_der_Welt_(I)_(BWV_64_4)_Jean_Sébastien_Bach" . 157)
    ("Was_frag_ich_nach_der_Welt_(II)_(BWV_94_8)_Jean_Sébastien_Bach" . 157)
    ("Was_mein_Gott_will,_das_g'scheh_allzeit_(I)_(BWV_144_6)_Jean_Sébastien_Bach" . 188)
    ("Was_mein_Gott_will,_das_g'scheh_allzeit_(II)_(BWV_244_25)_Jean_Sébastien_Bach" . 188)
    ("Was_willst_du_dich,_o_meine_Seele,_kränken_(BWV_425)_Jean_Sébastien_Bach" . 189)
    ("Weg,_mein_Herz,_mit_den_Gedanken_(BWV_32_6)_Jean_Sébastien_Bach" . 64)
    ("Welt,_ade!_Ich_bin_dein_müde_(BWV_27_6)_Jean_Sébastien_Bach" . 190)
    ("Weltlich_Ehr_und_zeitlich_Gut_(BWV_426)_Jean_Sébastien_Bach" . 191)
    ("Wenn_einer_alle_Ding_verstünd_(v._8)?_(BWV_77_6)_Jean_Sébastien_Bach" . 2)
    ("Wenn_ich_in_Angst_und_Not_(BWV_427)_Jean_Sébastien_Bach" . 193)
    ("Wenn_mein_Stündlein_vorhanden_ist_(I)_(BWV_428)_Jean_Sébastien_Bach" . 194)
    ("Wenn_mein_Stündlein_vorhanden_ist_(II)_(BWV_429)_Jean_Sébastien_Bach" . 194)
    ("Wenn_mein_Stündlein_vorhanden_ist_(III)_(BWV_430)_Jean_Sébastien_Bach" . 194)
    ("Wenn_wir_in_höchsten_Nöten_sein_(I)_(BWV_431)_Jean_Sébastien_Bach" . 195)
    ("Wenn_wir_in_höchsten_Nöten_sein_(II)_(BWV_432)_Jean_Sébastien_Bach" . 195)
    ("Wer_Gott_vertraut,_hat_wohl_gebaut_(BWV_433)_Jean_Sébastien_Bach" . 196)
    ("Wer_in_dem_Schutz_des_Höchsten_ist_(BWV_339)_Jean_Sébastien_Bach" . 18)
    ("Wer_nur_den_lieben_Gott_lässt_walten_(I)_(BWV_88_7)_Jean_Sébastien_Bach" . 197)
    ("Wer_nur_den_lieben_Gott_lässt_walten_(II)_(BWV_197_10)_Jean_Sébastien_Bach" . 197)
    ("Wer_nur_den_lieben_Gott_lässt_walten_(III)_(BWV_434)_Jean_Sébastien_Bach" . 197)
    ("Wer_weiß,_wie_nahe_mir_mein_Ende_(I)_(BWV_84_5)_Jean_Sébastien_Bach" . 197)
    ("Wer_weiß,_wie_nahe_mir_mein_Ende_(II)_(BWV_166_6)_Jean_Sébastien_Bach" . 197)
    ("Werde_munter_mein_Gemüte_(I)_(BWV_55_5)_Jean_Sébastien_Bach" . 198)
    ("Werde_munter_mein_Gemüte_(II)_(BWV_244_40)_Jean_Sébastien_Bach" . 198)
    ("Wie_bist_du,_Seele,_in_mir_so_gar_betrübt_(BWV_435)_Jean_Sébastien_Bach" . 199)
    ("Wie_schön_leuchtet_der_Morgenstern_(I)_(BWV_36_4)_Jean_Sébastien_Bach" . 200)
    ("Wie_schön_leuchtet_der_Morgenstern_(II)_(BWV_172_6)_Jean_Sébastien_Bach" . 200)
    ("Wie_schön_leuchtet_der_Morgenstern_(III)_(BWV_436)_Jean_Sébastien_Bach" . 200)
    ("Wie_soll_ich_dich_empfangen_(BWV_248_5)_Jean_Sébastien_Bach" . 19)
    ("Wir_Christenleut_habn_jetzund_Freud_(I)_(BWV_40_3)_Jean_Sébastien_Bach" . 201)
    ("Wir_Christenleut_habn_jetzund_Freud_(II)_(BWV_110_7)_Jean_Sébastien_Bach" . 201)
    ("Wir_glauben_all_an_einen_Gott_(choral)_(BWV_437)_Jean_Sébastien_Bach" . 202)
    ("Wir_singen_dir,_Immanuel_(BWV_248_23)_Jean_Sébastien_Bach" . 179)
    ("Wo_Gott_der_Herr_nicht_bei_uns_hält_(BWV_258)_Jean_Sébastien_Bach" . 203)
    ("Wo_Gott_zum_Haus_nicht_gibt_sein_Gunst_(I)_(BWV_438)_Jean_Sébastien_Bach" . 204)
    ("Wo_Gott_zum_Haus_nicht_gibt_sein_Gunst_(II)_(BWV_1123)_Jean_Sébastien_Bach" . 204)
    ("Wo_soll_ich_fliehen_hin_(I)_(BWV_5_7)_Jean_Sébastien_Bach" . 205)
    ("Wo_soll_ich_fliehen_hin_(II)_(BWV_89_6)_Jean_Sébastien_Bach" . 205)
    ("Wo_soll_ich_fliehen_hin_(III)_(BWV_136_6)_Jean_Sébastien_Bach" . 205)
    ("Wo_soll_ich_fliehen_hin_(IV)_(BWV_148_6)_Jean_Sébastien_Bach" . 205)
    ("Wär_Gott_nicht_mit_uns_diese_Zeit_(I)_(BWV_14_5)_Jean_Sébastien_Bach" . 206)
    ("Wär_Gott_nicht_mit_uns_diese_Zeit_(II)_(BWV_257)_Jean_Sébastien_Bach" . 203)
    ("Zeuch_ein_zu_deinen_Toren_(BWV_183_5)_Jean_Sébastien_Bach" . 77)
   ))

% tune index -> (tune-title tune-composer zahn-number)
#(define tune-info-alist
   '(
    (0 . ("Ach Gott und Herr" "Freiberg 1655*" "2051"))
    (1 . ("Ach Gott, erhör mein Seufzen und Wehklagen" "Frankfurt/Main 1662" "1831a"))
    (2 . ("Ach Gott, vom Himmel sieh darein" "Erfurt 1524*" "4431"))
    (3 . ("Ach Herre Gott, mich treibt die Not" "Praetorius, Michael*" "247"))
    (4 . ("Ach wie flüchtig, ach wie nichtig" "Crüger, Johann*" "1887"))
    (5 . ("Ach, was soll ich Sünder machen" "Anonyme" "3573b"))
    (6 . ("Ach, wie groß ist Gottes Güt und Wohltat" "Nürnberg 1561" "1581"))
    (7 . ("Alle Menschen müssen sterben" "Hintze, Jakob" "6778"))
    (8 . ("Allein Gott in der Höh sei Ehr" "Decius, Nikolaus*" "4457"))
    (9 . ("Allein zu dir, Herr Jesu Christ" "Wittenberg c.1541" "7292b"))
    (10 . ("Alles ist an Gottes Segen" "Löhner, Johann" "3838ff"))
    (11 . ("Als der gütige Gott" "Crüger, Johann" "1646"))
    (12 . ("Als Jesu Christus in der Nacht" "Crüger, Johann" "258"))
    (13 . ("An Wasserflüssen Babylon" "Greitter, Matthias" "7663"))
    (14 . ("Auf, auf, mein Herz, mit Freuden" "Crüger, Johann" "5243"))
    (15 . ("Auf, auf, mein Herz, und du, mein ganzer Sinn" "Staden, Johann" "824"))
    (16 . ("Aus meines Herzens Grunde" "Anonyme" "5269"))
    (17 . ("Aus tiefer Not schrei ich zu dir (mélodie n° 1)" "Luther, Martin" "4437"))
    (18 . ("Aus tiefer Not schrei ich zu dir (mélodie n° 2)" "Dachstein, Wolfgang" "4438"))
    (19 . ("Befiehl du deine Wege (mélodie n° 1)" "Hassler, Hans Leo" "5385a"))
    (20 . ("Befiehl du deine Wege (mélodie n° 2)" "Gesius, Bartholomäus" "5393"))
    (21 . ("Christ ist erstanden" "Wittenberg 1533*" "8584"))
    (22 . ("Christ lag in Todesbanden" "Luther, Martin*" "7012a"))
    (23 . ("Christ unser Herr zum Jordan kam" "Walter, Johann?" "7246"))
    (24 . ("Christ, der du bist der helle Tag" "Eisleben 1568" "384"))
    (25 . ("Christe, der du bist Tag und Licht" "Luther, Martin*" "343"))
    (26 . ("Christe, du Beistand" "Löwenstern, Matthäus Apelles von" "993"))
    (27 . ("Christum wir sollen loben schon" "Strasbourg 1537" "297"))
    (28 . ("Christus ist erstanden, hat überwunden" "Bohemian Brethren 1531" "6240c"))
    (29 . ("Christus, der ist mein Leben" "Vulpius, Melchior" "132"))
    (30 . ("Christus, der uns selig macht" "Leipzig c.1500" "6285"))
    (31 . ("Da Christus geboren war" "Bohemian Brethren 1544*" "4816"))
    (32 . ("Da der Herr Christ zu Tische saß" "Görlitz 1611" "1560"))
    (33 . ("Danket dem Herren" "Nürnberg 1544*" "12"))
    (34 . ("Danket dem Herrn, heut und allzeit" "Leipzig 1589" "439"))
    (35 . ("Das alte Jahr vergangen ist" "Steuerlein, Johann" "381c"))
    (36 . ("Das neugeborne Kindelein" "Vulpius, Melchior" "491"))
    (37 . ("Das walt Gott Vater und Gott" "Leipzig 1713" "673"))
    (38 . ("Das walt mein Gott, Vater, Sohn und heiliger Geist" "Gotha 1648" "4217"))
    (39 . ("Den Vater dort oben" "Weisse, Michael" "4795"))
    (40 . ("Der du bist drei in Einigkeit" "Schein, Johann Hermann*" "335"))
    (41 . ("Der Tag, der ist so freudenreich" "Wittenberg 1529*" "7869f"))
    (42 . ("Des heilgen Geistes reiche Gnad" "Schein, Johann Hermann*" "3706"))
    (43 . ("Die Nacht ist kommen" "Bohemian Brethren 1566*" "5001"))
    (44 . ("Du Friedefürst, Herr Jesu Christ" "Bartolomäus Gesius" "4373"))
    (45 . ("Du geballtes Weltgebäude" "Crüger, Johann" "6773"))
    (46 . ("Du großer Schmerzensmann" "Jan, Martin" "5159"))
    (47 . ("Durch Adams Fall ist ganz verderbt" "Wittenberg 1529" "7549"))
    (48 . ("Ein feste Burg ist unser Gott" "Luther, Martin" "7377"))
    (49 . ("Ein Kind geborn zu Bethlehem (Puer natus in Bethlehem)" "Lossius, Lucas*" "192b"))
    (50 . ("Eine Hoffnung stehe feste" "Bremen 1680" "4870"))
    (51 . ("Eins ist not, ach Herr, dies Eine" "Halle 1704*" "7127"))
    (52 . ("Erbarm dich mein, o Herre Gott" "Wittenberg 1524" "5851"))
    (53 . ("Erhalt uns, Herr, bei deinem Wort" "Luther, Martin*" "350"))
    (54 . ("Ermuntre dich, mein schwacher Geist" "Schop, Johann" "5741"))
    (55 . ("Erschienen ist der herrlich Tag" "Herman, Nikolaus" "1743"))
    (56 . ("Erstanden ist der heilge Christ" "Bohemian Brethren 1501/1531*" "1746"))
    (57 . ("Es ist das Heil uns kommen her" "Nürnberg 1523*" "4430"))
    (58 . ("Es ist genug" "Ahle, Johann Rudolph" "7173"))
    (59 . ("Es sind doch selig alle, die im rechten Glauben wandeln" "Greitter, Matthias" "8303"))
    (60 . ("Es spricht der Unweisen Mund wohl" "Walter, Johann" "4436"))
    (61 . ("Es stehn vor Gottes Throne" "Burck, Joachim a" "4296"))
    (62 . ("Es wird schier der letzte Tag herkommen" "Weisse, Michael" "1423"))
    (63 . ("Es woll uns Gott genädig sein" "Greitter, Matthias" "7247"))
    (64 . ("Freu dich sehr, o meine Seele" "Genève 1551*" "6543"))
    (65 . ("Freuet euch, ihr Christian alle" "Hammerschmidt, Andreas" "7880a"))
    (66 . ("Gelobet seist du, Jesu Christ" "Wittenberg 1524*" "1947"))
    (67 . ("Gib dich zufrieden und sei stille" "Bach, J.S.?" "7417a"))
    (68 . ("Gott der Vater wohn uns bei" "Wittenberg 1524*" "8507"))
    (69 . ("Gott des Himmels und der Erden" "Albert, Heinrich" "3614"))
    (70 . ("Gott hat das Evangelium" "Alber, Erasmus" "1788"))
    (71 . ("Gott lebet noch" "Halle 1704" "7951"))
    (72 . ("Gott sei gelobet und gebenedeiet" "Wittenberg 1524*" "8078"))
    (73 . ("Gott, der du selber bist das Licht" "Crüger, Johann" "5814"))
    (74 . ("Gottlob, es geht nunmehr zum Ende" "Anonyme" "2855"))
    (75 . ("Hast du denn, Jesu, dein Angesicht gänzlich verborgen" "Stralsund 1665" "1912a"))
    (76 . ("Heilig, heilig" "Steinau 1726*" "8633"))
    (77 . ("Helft mir Gotts Güte preisen" "Anonyme" "5267"))
    (78 . ("Herr Christ, der einge Gottessohn" "Erfurt 1524*" "4297a"))
    (79 . ("Herr Gott, dich loben alle wir" "Genève 1551*" "368"))
    (80 . ("Herr Gott, dich loben wir [The German Te Deum]" "Luther, Martin*" "8652"))
    (81 . ("Herr Jesu Christ, du hast bereitt" "Anonyme" "4711"))
    (82 . ("Herr Jesu Christ, du höchstes Gut" "Görlitz 1587*" "4486"))
    (83 . ("Herr Jesu Christ, meins Lebens Licht (mélodie n° 1)" "Anonyme" "314"))
    (84 . ("Herr Jesu Christ, meins Lebens Licht (mélodie n° 2)" "Leipzig 1625" "533a"))
    (85 . ("Herr Jesu Christ, wahr Mensch und Gott" "Eccard, Johannes" "423"))
    (86 . ("Herr, ich habe missgehandelt" "Crüger, Johann" "3695"))
    (87 . ("Herr, Jesu Christ, dich zu uns wend" "Gochsheim/Redwitz 1628" "625"))
    (88 . ("Herr, nun lass in Friede" "Bohemian Brethren 1694" "3302"))
    (89 . ("Herr, straf mich nicht in deinem Zorn" "Crüger, Johann" "4606a"))
    (90 . ("Herzlich lieb hab ich dich, o Herr" "Strasbourg 1577" "8326"))
    (91 . ("Herzliebster Jesu, was hast du verbrochen" "Crüger, Johann" "983"))
    (92 . ("Heut ist, o Mensch, ein großer Trauertag" "Löwenstern, Matthäus Apelles von" "8569"))
    (93 . ("Heut ist, o Mensch, ein großer Trauertag" "Löwenstern, Matthäus Apelles von" "8569a"))
    (94 . ("Heut triumphieret Gottes Sohn" "Gesius, Bartholomäus" "2585"))
    (95 . ("Hilf, Gott, dass mirs gelinge" "Leipzig 1545" "4329"))
    (96 . ("Hilf, Herr Jesu, lass gelingen (mélodie n° 1)" "Schop, Johann" "3687"))
    (97 . ("Ich bin ja, Herr, in deiner Macht" "Bach, J.S." "5869"))
    (98 . ("Ich dank dir Gott für all Wohltat" "Eisleben 1568" "8090ab"))
    (99 . ("Ich dank dir, lieber Herre" "Anonyme" "5354b"))
    (100 . ("Ich hab mein Sach Gott heimgestellt" "Frankfurt/Main 1589*" "1678"))
    (101 . ("Ich ruf zu dir, Herr Jesu Christ" "Wittenberg 1529" "7400"))
    (102 . ("Ihr Gestirn, ihr hohlen Lüfte" "Peter, Christoph" "3703"))
    (103 . ("Ihr lieben Christen, freut euch nun" "Wittenberg 1546" "364"))
    (104 . ("In allen meinen Taten" "Leipzig 1679" "2276"))
    (105 . ("In dich hab ich gehoffet, Herr" "Nürnberg 1581" "2461"))
    (106 . ("In dich hab ich gehoffet, Herr (mélodie n° 2)" "Leipzig 1545" "1706"))
    (107 . ("In dulci jubilo" "Wittenberg 1535" "4947"))
    (108 . ("In Gottes Namen fahren wir" "Erfurt 1524*" "1951"))
    (109 . ("Ist Gott mein Schild und Helfersmann" "Dresden 1694" "2542"))
    (110 . ("Jesu Kreuz, Leiden und Pein" "Vulpius, Melchior" "6288b"))
    (111 . ("Jesu, der du meine Seele" "Frankfurt/Main 1662*" "6804"))
    (112 . ("Jesu, der du selbsten wohl" "Breslau 1668" "6335"))
    (113 . ("Jesu, du mein liebstes Leben" "Schop, Johann" "7891"))
    (114 . ("Jesu, Jesu, du bist mein" "Bach, J.S.?" "6446"))
    (115 . ("Jesu, meine Freude" "Crüger, Johann" "8032"))
    (116 . ("Jesu, meines Herzens Freud" "Ahle, Johann Rudolph" "4797, 4798d"))
    (117 . ("Jesu, nun sei gepreiset" "Wittenberg 1591" "8477a"))
    (118 . ("Jesus Christ, unser Herre" "Gesius, Bartholomäus" "5391"))
    (119 . ("Jesus Christus, unser Heiland, der den Tod überwand" "Luther, Martin" "1978"))
    (120 . ("Jesus Christus, unser Heiland, der von uns" "Hohenfurt 1410" "1576"))
    (121 . ("Jesus ist mein Aufenthalt" "Lüneburg 1686" "3448a"))
    (122 . ("Jesus, meine Zuversicht" "Berlin 1653" "3432"))
    (123 . ("Keinen hat Gott verlassen" "Berlin 1640*" "5394"))
    (124 . ("Komm, Gott Schöpfer, heiliger Geist" "Luther, Martin*" "295"))
    (125 . ("Komm, Heiliger Geist, Herre Gott" "Erfurt 1524" "7445a"))
    (126 . ("Kommt her zu mir, spricht Gottes Sohn" "Nürnberg 1534*" "2496c"))
    (127 . ("Kommt her, ihr lieben Schwesterlein" "Herman, Nikolaus*" "198"))
    (128 . ("Kyrie, Gott Vater in Ewigkeit" "Naumburg 1537/38" "8600"))
    (129 . ("Lass, o Herr, dein Ohr sich neigen" "Bourgeois, Louis" "6863"))
    (130 . ("Lasset uns den Herren preisen" "Schop, Johann" "7886"))
    (131 . ("Liebster Gott, wenn werd ich sterben" "Vetter, Daniel" "6634"))
    (132 . ("Liebster Immanuel, Herzog der Frommen" "Darmstadt 1698" "4932c"))
    (133 . ("Liebster Jesu, wir sind hier" "Briegel, Wolfgang Carl*" "3498"))
    (134 . ("Lob sei dir, gütiger Gott" "Bohemian Brethren 1566" "4840"))
    (135 . ("Lobet den Herren, denn er ist sehr freundlich" "Scandelli, Antonio" "975"))
    (136 . ("Machs mit mir, Gott, nach deiner Güt" "Schein, Johann Hermann" "2383"))
    (137 . ("Mein Augen schließ ich jetzt" "Löwenstern, Matthäus Apelles von" "1067"))
    (138 . ("Mein Hüter und mein Hirt ist Gott der Herre" "Bourgeois, Louis" "3199"))
    (139 . ("Meine Seel erhebt den Herren [The German Magnificat]" "Wittenberg 1535*" "7372"))
    (140 . ("Meinen Jesum lass ich nicht" "Hammerschmidt, Andreas" "3449"))
    (141 . ("Meines Lebens letzte Zeit" "Gotha 1726" "6380"))
    (142 . ("Menschenkind merk eben" "Bohemian Brethren 1501/1531*" "3294"))
    (143 . ("Mit Fried und Freud ich fahr dahin" "Wittenberg 1524" "3986"))
    (144 . ("Mitten wir im Leben sind" "Walter, Johann*" "8502"))
    (145 . ("Nicht so traurig, nicht so sehr" "Bach, J.S.?" "3355"))
    (146 . ("Nun bitten wir den Heiligen Geist" "Wittenberg 1524*" "2029"))
    (147 . ("Nun danket alle Gott" "Crüger, Johann" "5142"))
    (148 . ("Nun freut euch, lieben Christen gmein (mélodie n° 1)" "Nürnberg 1524*" "4427"))
    (149 . ("Nun freut euch, lieben Christen gmein (mélodie n° 2)" "Wittenberg 1529*" "4429a"))
    (150 . ("Nun komm, der Heiden Heiland" "Erfurt 1524*" "1174"))
    (151 . ("Nun lasst uns Gott dem Herren" "Selnecker, Nikolaus" "159"))
    (152 . ("Nun lob, mein Seel, den Herren" "Kugelmann, Hans*" "8244"))
    (153 . ("Nun prieset alle Gottes Barmherzigkeit" "Löwenstern, Matthäus Apelles von" "4089"))
    (154 . ("Nun sich der Tag geendet hat" "Krieger, Adam" "212"))
    (155 . ("O Ewigkeit, du Donnerwort" "Crüger, Johann*" "5820"))
    (156 . ("O Gott, du frommer Gott (mélodie n° 2)" "Regensburg 1675, Meiningen 1693" "5148"))
    (157 . ("O Gott, du frommer Gott (mélodie n° 3)" "Fritsch, Ahasverus*" "5206b"))
    (158 . ("O Gott, du frommer Gott (mélodie n° 4)" "Anonyme" "5187"))
    (159 . ("O großer Gott von Macht" "Schnurr, Balthasar" "5101a"))
    (160 . ("O Herre Gott, dein göttlich Wort" "Erfurt 1527*" "5690"))
    (161 . ("O Herzensangst, o Bangigkeit" "Bach, J.S.?" "1003"))
    (162 . ("O höchster Gott, o unser lieber Herre" "Leipzig 1592*" "923"))
    (163 . ("O Lamm Gottes, unschuldig" "Decius, Nikolaus" "4361"))
    (164 . ("O Mensch, schau Jesum Christum an" "Titus, Peter" "3994"))
    (165 . ("O Traurigkeit, o Herzeleid!" "Mainz/Würzburg 1628" "1915"))
    (166 . ("O Welt, ich muss dich lassen" "Anonyme" "2293b"))
    (167 . ("O wie armen Sünder!" "Königsberg 1527*" "8187"))
    (168 . ("O wie selig seid ihr doch, ihr Frommen" "Crüger, Johann" "1583"))
    (169 . ("Schmücke dich, o liebe Seele" "Crüger, Johann" "6923"))
    (170 . ("Seelenbräutigam, Jesu, Gottes Lamm" "Drese, Adam" "3255"))
    (171 . ("Sei gegrüßet, Jesu gütig" "Leipzig 1682" "3889"))
    (172 . ("Singt dem Herrn ein neues Lied" "Löwenstern, Matthäus Apelles von" "6424"))
    (173 . ("So gehst du nun, mein Jesu, hin" "Wagner, Christoph" "7631"))
    (174 . ("So gibst du nun, mein Jesu, gute Nacht!" "Dresden 1694" "849"))
    (175 . ("Straf mich nicht in deinem Zorn" "Dresden 1694*" "6274a"))
    (176 . ("Valet will ich dir geben" "Teschner, Melchior" "5404a"))
    (177 . ("Vater unser im Himmelreich" "Leipzig 1539" "3561"))
    (178 . ("Verleih uns Frieden gnädiglich" "Wittenberg 1529*" "1945"))
    (179 . ("Vom Himmel hoch, da komm ich her" "Luther, Martin" "346"))
    (180 . ("Von Gott will ich nicht lassen" "Erfurt 1563*" "5264b"))
    (181 . ("Vor Freuden lasst uns springen" "Anonyme" "2339"))
    (182 . ("Wachet auf, ruft uns die Stimme" "Nicolai, Philipp*" "8405"))
    (183 . ("Warum betrübst du dich, mein Herz" "Frankfurt/Main 1557" "1689"))
    (184 . ("Warum sollt ich mich denn grämen" "Ebeling, Johann Georg" "6461"))
    (185 . ("Was betrübst du dich, mein Herz" "Anonyme" "6830"))
    (186 . ("Was bist du doch, o Seele so betrübet" "Anonyme" "1837"))
    (187 . ("Was Gott tut, das ist wohlgetan" "Gastorius, Severus" "5629"))
    (188 . ("Was mein Gott will, das gscheh allzeit" "Anvers 1540*" "7568"))
    (189 . ("Was willst du dich, o meine Seele, kränken" "Leipzig 1682" "7844"))
    (190 . ("Welt, ade! Ich bin dein müde" "Albinus, Johann Georg" "6531"))
    (191 . ("Weltlich Ehr und zeitlich Gut" "Triller, Valentin" "4972"))
    (192 . ("Wenn einer schon ein Haus aufbaut" "Bourgeois, Louis" "2570"))
    (193 . ("Wenn ich in Angst und Not" "Löwenstern, Matthäus Apelles von" "4233"))
    (194 . ("Wenn mein Stündlein vorhanden ist" "Frankfurt/Main 1569" "4482ab"))
    (195 . ("Wenn wir in höchsten Nöten sein" "Franc, Guillaume*" "394"))
    (196 . ("Wer Gott vertraut, hat wohl gebaut" "Magdeburg, Joachim" "8207"))
    (197 . ("Wer nur den lieben Gott lässt walten" "Neumark, Georg" "2778"))
    (198 . ("Werde munter mein Gemüte" "Schop, Johann" "6551"))
    (199 . ("Wie bist du, Seele, in mir so gar betrübt" "Brunmann, Christian (pseudo. for Martin Hanke)" "4092"))
    (200 . ("Wie schön leuchtet der Morgenstern" "Nicolai, Philipp" "8359"))
    (201 . ("Wir Christenleut habn jetzund Freud" "Füger, Kaspar" "2072"))
    (202 . ("Wir glauben all an einen Gott" "Wittenberg 1524*" "7971"))
    (203 . ("Wo Gott der Herr nicht bei uns hält" "Wittenberg 1529" "4441a"))
    (204 . ("Wo Gott zum Haus nicht gibt sein Gunst" "Wittenberg 1533" "305"))
    (205 . ("Wo soll ich fliehen hin" "Gesius, Bartholomäus*" "2164"))
    (206 . ("Wär Gott nicht mit uns diese Zeit" "Wittenberg 1524" "4434"))
   ))

#(define UNKNOWN-INDEX 9999)

#(define (tune-index base)
   (let ((p (assoc base tune-index-alist)))
     (if p (cdr p) UNKNOWN-INDEX)))

#(define (tune-info idx)
   (let ((p (assoc idx tune-info-alist)))
     (if p (cdr p) (list "Origine mélodique inconnue" "" ""))))

#(define (tune-of idx) (car (tune-info idx)))
#(define (composer-of idx) (cadr (tune-info idx)))
#(define (zahn-of idx) (caddr (tune-info idx)))

%% Label attached to each tune's own ToC entry (see build-grouped-content),
%% used by the composer index at the end of the book to \page-ref back to
%% where that tune's list of chorals actually lives.
#(define (tune-label idx)
   (string->symbol (string-append "tuneidx" (number->string idx))))

#(define (translate-composer-text s)
   (regexp-substitute/global #f "pseudo\\. for " s 'pre "pseudonyme de " 'post))

%% A choral whose own title is (near-)identical to its tune's name deserves a
%% third typographic treatment in the ToC, distinct from both the bold tune
%% header and a plain choral row: it is simultaneously choral and timbre.
#(define (normalize-for-compare s)
   (string-downcase (list->string (filter char-alphabetic? (string->list s)))))

#(define (title-matches-tune? rec)
   (let* ((idx (assq-ref rec 'tune-index))
          (title (normalize-for-compare (strip-verse-marks (or (assq-ref rec 'title) ""))))
          (tune (normalize-for-compare (tune-of idx))))
     (and (> (string-length title) 0)
          (or (string-match title tune) (string-match tune title)))))

#(define (tune-less? a b)
   (let ((ia (tune-index (assq-ref a 'base)))
         (ib (tune-index (assq-ref b 'base))))
     (cond
       ((< ia ib) #t)
       ((> ia ib) #f)
       (else (bwv-less? a b)))))

% -----------------------------------------------------------------------------

#(define layout-files
   (filter (lambda (f) (string-suffix? "_layout.ly" f)) (scandir source-dir)))

#(define (make-record fn)
   (let* ((full (string-append source-dir "/" fn))
          (content (read-utf8-file full))
          (base (substring fn 0 (- (string-length fn) (string-length "_layout.ly")))))
     (list (cons 'base base)
           (cons 'title (extract-title content))
           (cons 'title-runs (extract-title-runs content))
           (cons 'subtitle (extract-field content "subtitle"))
           (cons 'opus (extract-field content "opus"))
           (cons 'poet (extract-poet content))
           (cons 'tune-index (tune-index base))
           (cons 'score (extract-score-block content)))))

#(define records (map make-record layout-files))
#(define sorted-records (sort records tune-less?))

#(define (count-by-index records)
   (let loop ((recs records) (acc '()))
     (if (null? recs)
         acc
         (let* ((idx (assq-ref (car recs) 'tune-index))
                (existing (assoc idx acc)))
           (loop (cdr recs)
                 (if existing
                     (map (lambda (p) (if (equal? (car p) idx) (cons idx (+ 1 (cdr p))) p)) acc)
                     (cons (cons idx 1) acc)))))))

#(define tune-counts (count-by-index sorted-records))

#(define (tune-count idx)
   (let ((p (assoc idx tune-counts)))
     (if p (cdr p) 0)))

%% toc-item-inner returns the bare markup expression (no leading \markup
%% keyword), so it can be embedded directly inside another already-open
%% \column {...} (used for the tune's first piece, merged with its header).
%% Indenting a row must not shift the BWV/page-number columns: the inner
%% fill-with-pattern uses a FIXED line-width (73), so the \hspace pushed in
%% front of it is subtracted from that width, keeping its right edge (where
%% the opus starts) at the same absolute position for every row.
#(define TOC-INDENT 1.5)
#(define TOC-ROW-WIDTH 73)

#(define (toc-item-inner title opus emphasize? indent?)
   (let* ((title-parts (wrap-poet title))
          (title-parts (if (= (length title-parts) 1)
                            (wrap-long-text (car title-parts) 55)
                            title-parts))
          (title-render (if emphasize?
                             (string-append "\\bold \"" (car title-parts) "\"")
                             (string-append "\"" (car title-parts) "\"")))
          (indent-markup (if indent? (string-append "\\hspace #" (number->string TOC-INDENT) " ") ""))
          (row-width (if indent? (- TOC-ROW-WIDTH TOC-INDENT) TOC-ROW-WIDTH))
          (row (string-append
                 "\\fill-with-pattern #1 #RIGHT \".\" \\line { " indent-markup
                 "\\override #'(line-width . " (number->string row-width) ") \\fill-with-pattern #1 #RIGHT \".\" "
                 title-render " \"\" \"" opus "\" } \\fromproperty #'toc:page")))
     (if (= (length title-parts) 1)
         (string-append "{ " row " }")
         (string-append "\\column { " row
                         " \\line { " indent-markup "\"" (cadr title-parts) "\" } \\vspace #0.33 }"))))

%% A choral is only merged with its tune's identity (bold row, no separate
%% header) when it is the tune's sole setting AND its own title already
%% carries the tune's name. In every other case — including a singleton
%% whose title differs from its tune — the tune gets the ordinary header
%% (as for any series) and the choral its ordinary plain row underneath.
#(define (merged-singleton? rec)
   (and (= (tune-count (assq-ref rec 'tune-index)) 1) (title-matches-tune? rec)))

%% Rows that belong under a tune header are indented, so the eye reads them
%% as children of that header rather than as standalone entries; a merged
%% singleton has no header above it and stays flush left.
#(define (piece-toc-row rec indent?)
   (toc-item-inner (escape-quotes (strip-verse-marks (assq-ref rec 'title))) (assq-ref rec 'opus)
                    (merged-singleton? rec) indent?))

%% A place-and-date entry always ends in a year (the site's own convention);
%% a bare name with no comma but also no digit (e.g. "Bartolomäus Gesius",
%% a rare case where the source wrote a name First-Last instead of
%% "Last, First") is still a person, not a place.
#(define (composer-category composer)
   (cond
     ((string-ci=? composer "Anonyme") 'anonymous)
     ((string-index composer #\,) 'named)
     ((not (any char-numeric? (string->list composer))) 'named)
     (else 'place)))

%% Labels the composer/place info line with the same category name used to
%% sort it in the end-of-book composer index, rather than the uninformative
%% "Timbre :" (the reader already knows this is about the tune — that's the
%% whole recueil's organizing principle).
#(define (composer-label-prefix composer)
   (case (composer-category composer)
     ((named) "Compositeur : ")
     ((place) "Lieu/date : ")
     (else "Origine inconnue : ")))

%% Same categories, abbreviated: the dictionary crams title + category +
%% composer/place + Zahn number onto one line, tighter on width than
%% anywhere else this label is used.
#(define (composer-label-prefix-short composer)
   (case (composer-category composer)
     ((named) "Comp. : ")
     ((place) "Lieu/date : ")
     (else "Origine inconnue : ")))

%% A merged singleton (count = 1, title = tune's name) has no body-header
%% above it — its own bold title already names the tune — so the
%% composer/place info is folded into a small inline note instead. Wrapped
%% like a subtitle, since it runs alongside the opus/poet column and can
%% otherwise overflow into it. A non-merged singleton needs no such note: it
%% gets an ordinary body-header, same as any multi-setting tune.
#(define (singleton-tune-note idx)
   (let ((composer (translate-composer-text (composer-of idx))))
     (if (string-null? composer)
         '()
         ;; wrap-long-text would split right after the label (its splitter
         ;; favors the first " : "), so wrap the body alone and prefix after.
         (let* ((body (string-append
                        composer
                        (let ((zahn (zahn-of idx)))
                          (if (string-null? zahn) "" (string-append "  —  Zahn " zahn)))))
                (wrapped (wrap-long-text body 45)))
           (cons (string-append (composer-label-prefix (composer-of idx)) (car wrapped)) (cdr wrapped))))))

#(define (piece-body rec)
   (let* ((base (assq-ref rec 'base))
          (notes-path (string-append source-dir "/" base "_notes.ily"))
          (title-markup-inner (runs->concat-markup (assq-ref rec 'title-runs)))
          (subtitle (assq-ref rec 'subtitle))
          (opus (assq-ref rec 'opus))
          (poet (assq-ref rec 'poet))
          (score (assq-ref rec 'score))
          (idx (assq-ref rec 'tune-index))
          (extra-lines (append (if subtitle (wrap-long-text subtitle 60) '())
                                (if (merged-singleton? rec) (singleton-tune-note idx) '())))
          (piece-markup (if (null? extra-lines)
                             (string-append "\\markup \\bold \\concat {" title-markup-inner " }")
                             (string-append "\\markup \\column { \\bold \\concat {" title-markup-inner " }" (small-lines extra-lines) " }")))
          (opus-field (if poet
                          (string-append "\\markup \\right-column { \"" opus "\"" (small-lines (wrap-poet (abbreviate-poet poet))) " }")
                          (string-append "\"" opus "\""))))
     (string-append
       (read-utf8-file notes-path)
       "\n"
       (inject-header score piece-markup opus-field)
       "\n")))

%% Single-level grouping: a header per tune (title + composer + Zahn number +
%% piece count), merged into the same tocItem as the tune's first piece so a
%% header can never end up alone at the bottom of a ToC page. \noPageBreak
%% glues the printed body header to what follows for the same reason.

#(define (tune-toc-line idx)
   (let ((label (escape-quotes (tune-of idx)))
         (count (number->string (tune-count idx))))
     (string-append
       "  \\vspace #0.6\n"
       "  \\line { \\bold \\fontsize #1 \"" label "\" \\small \\concat { \" (\" \"" count "\" \")\" } }\n"
       "  \\vspace #0.4\n")))

#(define (tune-body-block idx)
   (let* ((label (escape-quotes (tune-of idx)))
          (composer (escape-quotes (translate-composer-text (composer-of idx))))
          (zahn (zahn-of idx))
          (sub (if (string-null? composer)
                   ""
                   (string-append
                     "  \\fill-line { \\null \\italic \\fontsize #-1 \\concat { \""
                     (escape-quotes (composer-label-prefix (composer-of idx))) "\" \""
                     composer "\""
                     (if (string-null? zahn) "" (string-append " \"  —  Zahn " zahn "\""))
                     " } \\null }\n"))))
     (string-append
       "\\markup \\column {\n"
       "  \\vspace #1\n"
       "  \\fill-line { \\null \\fontsize #2 \\bold \"" label "\" \\null }\n"
       sub
       "  \\vspace #0.5\n"
       "}\n"
       "\\noPageBreak\n")))

#(define (build-grouped-content records)
   (let loop ((recs records) (prev-idx #f) (acc '()))
     (if (null? recs)
         (apply string-append (reverse acc))
         (let* ((rec (car recs))
                (idx (assq-ref rec 'tune-index))
                (score (assq-ref rec 'score))
                (new-tune (or (not prev-idx) (not (= idx prev-idx))))
                (merged (and new-tune (merged-singleton? rec)))
                ;; Header shown for every tune except a merged singleton
                ;; (count = 1 and title = tune's name): that one case alone
                ;; folds tune and choral into a single bold row/title, in the
                ;; ToC as much as in the printed body — a singleton whose own
                ;; title differs from its tune gets the same header as any
                ;; multi-setting tune, for consistency with the index.
                (toc-header (and new-tune (not merged)))
                (body-header (and new-tune (not merged)))
                (tune-body (if body-header (tune-body-block idx) ""))
                (piece-chunk
                  (if (not score)
                      ""
                      (string-append
                        (cond
                          ;; Header + first piece share one tocItem so a page
                          ;; break can never separate them (no orphan header at
                          ;; a page bottom). But a multi-line column stencil is
                          ;; padded by space-lines WITHOUT the bottom padding a
                          ;; standalone row gets, so the first inter-row gap of
                          ;; a series came out tighter (~51 vs ~62 at 300dpi)
                          ;; than the rest. The trailing \vspace restores that
                          ;; missing bottom room, equalizing every gap.
                          (toc-header
                            (string-append
                              "\\label #'" (symbol->string (tune-label idx)) "\n"
                              "\\tocItem \\markup \\column {\n"
                              (tune-toc-line idx)
                              "  \\vspace #0.3\n"
                              "  " (piece-toc-row rec #t) "\n"
                              "  \\vspace #0.19\n"
                              "}\n"))
                          ;; a merged singleton (no header) still gets a little
                          ;; air before it in the ToC, so a series and the
                          ;; next standalone choral don't visually run together
                          (merged
                            (string-append
                              "\\label #'" (symbol->string (tune-label idx)) "\n"
                              "\\tocItem \\markup \\column {\n"
                              "  \\vspace #0.6\n"
                              "  " (piece-toc-row rec #f) "\n"
                              "}\n"))
                          (else
                            (string-append "\\tocItem \\markup " (piece-toc-row rec #t) "\n")))
                        (piece-body rec)))))
           (loop (cdr recs) idx (cons piece-chunk (cons tune-body acc)))))))

#(define big-content
   (build-grouped-content sorted-records))

% --- Composer index (appendix) ----------------------------------------------
%% A second index at the end of the book: the same 207 tunes, grouped instead
%% by composer, so a reader can find every melody due to a given author. Not
%% every tune has one: ~52% have a real personal name, ~42% only carry the
%% place and date of their earliest known printing (no composer known), and
%% ~6% are flatly "Anonyme". Each tier is its own alphabetical section.

#(define all-tune-indices (map car tune-info-alist))

%% A trailing "*" ("this tune is itself based on an even older source", see
%% the main notice) or "?" (uncertain attribution) is per-source metadata,
%% not part of the composer's own name/place — stripped so e.g.
%% "Crüger, Johann" / "Crüger, Johann*" and "Bach, J.S." / "Bach, J.S.?"
%% each group under one heading. "pseudo. for X" ("published under a
%% pseudonym; X is the composer's real identity") is translated in place.
%% One source entry ("Bartolomäus Gesius") spells the same composer as the
%% other four ("Gesius, Bartholomäus") differently — First Last instead of
%% Last, First, and missing the 'h' — so it would otherwise get its own,
%% spurious one-tune heading right next to his real one.
#(define composer-aliases
   '(("Bartolomäus Gesius" . "Gesius, Bartholomäus")))

#(define (strip-composer-star s)
   (let* ((cleaned (translate-composer-text (regexp-substitute/global #f "[ \t]*[*?][ \t]*$" s 'pre 'post)))
          (alias (assoc cleaned composer-aliases)))
     (if alias (cdr alias) cleaned)))

#(define (dedupe-strings lst)
   (let loop ((l lst) (seen '()) (acc '()))
     (cond
       ((null? l) (reverse acc))
       ((member (car l) seen) (loop (cdr l) seen acc))
       (else (loop (cdr l) (cons (car l) seen) (cons (car l) acc))))))

#(define (partition-tunes indices)
   (let loop ((idxs indices) (named '()) (place '()) (anon '()))
     (if (null? idxs)
         (list named place anon)
         (let* ((idx (car idxs))
                (composer (composer-of idx))
                (cat (composer-category composer)))
           (cond
             ((eq? cat 'anonymous) (loop (cdr idxs) named place (cons idx anon)))
             ((eq? cat 'named)
              (loop (cdr idxs) (cons (cons (strip-composer-star composer) idx) named) place anon))
             (else
              (loop (cdr idxs) named (cons (cons (strip-composer-star composer) idx) place) anon)))))))

%% pairs: list of (composer-key . tune-index). Returns (key . (tune-index ...))
%% sorted alphabetically by key, each tune-index list sorted by tune name.
#(define (group-by-composer-key pairs)
   (let* ((keys (dedupe-strings (map car pairs)))
          (sorted-keys (sort keys string-ci<?)))
     (map (lambda (k)
            (let* ((idxs (map cdr (filter (lambda (p) (string=? (car p) k)) pairs)))
                   (sorted-idxs (sort idxs (lambda (a b) (string-ci<? (tune-of a) (tune-of b))))))
              (cons k sorted-idxs)))
          sorted-keys)))

%% A "lieu/date" key is always "Place Year" (the site's own convention, e.g.
%% "Frankfurt/Main 1662" or "Leipzig c.1500"): split off the trailing
%% whitespace-separated date-like token so places with several dated
%% editions (e.g. "Leipzig") can be shown as one place with the dates
%% nested underneath, instead of as unrelated-looking separate entries.
#(define (split-place-date s)
   (let ((m (string-match "^(.*)[ \t]+([^ \t]*[0-9][0-9][0-9][^ \t]*)$" s)))
     (if m
         (cons (match:substring m 1) (match:substring m 2))
         (cons s ""))))

#(define tune-partition (partition-tunes all-tune-indices))
#(define named-groups (group-by-composer-key (list-ref tune-partition 0)))
#(define anon-sorted
   (sort (list-ref tune-partition 2) (lambda (a b) (string-ci<? (tune-of a) (tune-of b)))))

%% place-tree: list of (place . date-groups), sorted by place; each
%% date-groups is a list of (date . (tune-index ...)), sorted by date, each
%% tune-index list sorted by tune name.
#(define (build-place-tree pairs)
   (let* ((triples (map (lambda (p) (cons (split-place-date (car p)) (cdr p))) pairs))
          (places (dedupe-strings (map (lambda (t) (car (car t))) triples)))
          (sorted-places (sort places string-ci<?)))
     (map (lambda (place)
            (let* ((this-place (filter (lambda (t) (string=? (car (car t)) place)) triples))
                   (dates (dedupe-strings (map (lambda (t) (cdr (car t))) this-place)))
                   (sorted-dates (sort dates string-ci<?))
                   (date-groups
                     (map (lambda (date)
                            (let* ((idxs (map cdr (filter (lambda (t) (string=? (cdr (car t)) date)) this-place)))
                                   (sorted-idxs (sort idxs (lambda (a b) (string-ci<? (tune-of a) (tune-of b))))))
                              (cons date sorted-idxs)))
                          sorted-dates)))
              (cons place date-groups)))
          sorted-places)))

#(define place-tree (build-place-tree (list-ref tune-partition 1)))

#(define (composer-tune-row idx indent-amount)
   (string-append
     "  \\line { \\hspace #" (number->string indent-amount) " \\fill-with-pattern #1 #RIGHT \".\" \""
     (escape-quotes (tune-of idx)) "\" \\page-ref #'" (symbol->string (tune-label idx)) " \"000\" \"?\" }\n"))

%% Only the header + its FIRST tune are one atomic block (so the header can
%% never end up alone at a page bottom); every following tune is its own
%% small standalone markup. A whole group as a single atomic column (as
%% before) meant that whenever the NEXT group didn't fit in the space left
%% on a page, LilyPond moved the entire thing to the next page, wasting up
%% to a full group's height of blank space. Independent per-row markups let
%% the page breaker stop almost exactly where the space runs out.
#(define (standalone-tune-row idx indent-amount)
   (string-append "\\markup \\column { \\vspace #0.1 " (composer-tune-row idx indent-amount) " }\n"))

%% Almost every place in the "Lieu/date" section is in present-day Germany,
%% left unstated; the few exceptions (a place now in Belgium or Switzerland)
%% get a small country tag so they don't look like typos in the middle of
%% an otherwise all-German list.
#(define (country-tag place)
   (cond
     ((string=? place "Anvers") " \\small \"(Belgique)\"")
     ((string=? place "Genève") " \\small \"(Suisse)\"")
     (else "")))

#(define (composer-group-block key idxs . tag)
   (let ((country (if (pair? tag) (car tag) "")))
     (string-append
       "\\markup \\column {\n"
       "  \\vspace #0.6\n"
       "  \\line { \\bold \\fontsize #1 \"" (escape-quotes key) "\"" country " \\small \\concat { \" (\" \""
       (number->string (length idxs)) "\" \")\" } }\n"
       "  \\vspace #0.4\n"
       "  " (composer-tune-row (car idxs) 1.5) "\n"
       "}\n"
       (apply string-append (map (lambda (idx) (standalone-tune-row idx 1.5)) (cdr idxs))))))

%% A place with a single known date is shown exactly like a composer group
%% (place+date as one heading); a place with several dated editions gets a
%% two-level tree: the place as the main heading, each date as a smaller
%% sub-heading with its own tunes nested underneath. The place header sticks
%% to the first date's header, which sticks to its first tune (one atomic
%% block); every later date's header sticks only to its own first tune.
#(define (place-block place-entry)
   (let ((place (car place-entry)) (date-groups (cdr place-entry)))
     (if (= (length date-groups) 1)
         (composer-group-block (string-append place " " (caar date-groups)) (cdar date-groups) (country-tag place))
         (let loop ((dgs date-groups) (first-date #t) (acc '()))
           (if (null? dgs)
               (apply string-append (reverse acc))
               (let* ((dg (car dgs)) (date (car dg)) (idxs (cdr dg))
                      (date-header
                        (string-append
                          "  \\line { \\hspace #1.2 \\bold \"" (escape-quotes date) "\" \\small \\concat { \" (\" \""
                          (number->string (length idxs)) "\" \")\" } }\n"
                          "  \\vspace #0.2\n"))
                      (place-header
                        (if first-date
                            (string-append
                              "  \\line { \\bold \\fontsize #1 \"" (escape-quotes place) "\"" (country-tag place)
                              " \\small \\concat { \" (\" \""
                              (number->string (apply + (map (lambda (d) (length (cdr d))) date-groups)))
                              "\" \")\" } }\n"
                              "  \\vspace #0.4\n")
                            ""))
                      (atomic-block
                        (string-append
                          "\\markup \\column {\n"
                          "  \\vspace #0.6\n"
                          place-header
                          date-header
                          "  " (composer-tune-row (car idxs) 2.7) "\n"
                          "}\n"))
                      (rest-rows
                        (apply string-append (map (lambda (idx) (standalone-tune-row idx 2.7)) (cdr idxs)))))
                 (loop (cdr dgs) #f (cons rest-rows (cons atomic-block acc)))))))))

#(define (section-title-block title first)
   (string-append
     (if first "" "\\pageBreak\n")
     "\\markup \\column {\n"
     "  \\vspace #1\n"
     "  \\fill-line { \\null \\fontsize #3 \\bold \"" title "\" \\null }\n"
     "  \\vspace #1\n"
     "}\n"))

#(define composer-index-content
   (string-append
     (section-title-block "Compositeur" #t)
     (apply string-append (map (lambda (g) (composer-group-block (car g) (cdr g))) named-groups))
     (section-title-block "Lieu/date" #f)
     (apply string-append (map place-block place-tree))
     (section-title-block "Origine inconnue" #f)
     (composer-group-block "Anonyme" anon-sorted)))

% --- Tune dictionary (appendix) ---------------------------------------------
%% A third index: for each of the 207 tunes, the melody alone (soprano line,
%% no lyrics, no harmonization), in alphabetical order — a quick visual
%% reminder of what a timbre actually sounds like, in the spirit of a
%% thematic catalogue such as Zahn's. One representative setting is picked
%% per tune (its first piece in alphabetical order); a tune's melody rarely
%% varies in any way that matters here between its different BWV settings.

#(define (extract-regex pattern content)
   (let ((m (string-match pattern content)))
     (if m (match:substring m 0) "")))

%% Only the soprano staff's own \clef/\key/\time are wanted (the bass staff
%% has its own, irrelevant here); each appears first in the score text, so
%% the first match of each is always the soprano one.
#(define (dict-clef-key-time score)
   (string-append
     (extract-regex "\\\\clef[ \t]+[a-zA-Z]+" score) " "
     (extract-regex "\\\\key[ \t]+[a-z]+[ \t]+\\\\(major|minor)" score) " "
     (extract-regex "\\\\time[ \t]+[0-9]+/[0-9]+" score)))

#(define (first-record-per-tune records)
   (let loop ((recs records) (prev-idx #f) (acc '()))
     (if (null? recs)
         (reverse acc)
         (let* ((rec (car recs)) (idx (assq-ref rec 'tune-index)))
           (if (or (not prev-idx) (not (= idx prev-idx)))
               (loop (cdr recs) idx (cons rec acc))
               (loop (cdr recs) idx acc))))))

%% Pieces whose tune couldn't be matched to any Zahn entry share the
%% UNKNOWN-INDEX placeholder "Origine mélodique inconnue" — not an actual
%% timbre, so it has no place in a dictionary of (Zahn-catalogued) tunes.
#(define dict-records
   (filter (lambda (rec) (not (= (assq-ref rec 'tune-index) UNKNOWN-INDEX)))
           (first-record-per-tune sorted-records)))

%% A bookpart's body only accepts \score/\markup/\paper/\header — not the
%% bare "sopranoMusic = { ... }" variable assignments that piece-body relies
%% on elsewhere (fine at the file's true toplevel, invalid inside \bookpart).
%% So instead of defining and referencing a variable, the music value itself
%% (its text between "=" and the matching closing brace, transpose wrapper
%% included where present) is spliced directly into the \score.
#(define (extract-variable-value content varname)
   (let ((m (string-match (string-append varname "[ \t]*=") content)))
     (if (not m)
         ""
         (let* ((after-eq (match:end m))
                (rest (substring content after-eq))
                (brace-m (string-match "\\{" rest)))
           (if (not brace-m)
               ""
               (let* ((open-idx (+ after-eq (match:start brace-m)))
                      (close-idx (find-matching-brace content open-idx)))
                 (substring content after-eq (+ close-idx 1))))))))

%% A left-side instrumentName was tried first, but it relies on the paper's
%% fixed `indent` (5mm, sized for the main recueil's short "S A"/"T B"
%% labels) to reserve its space — LilyPond does not auto-grow this per
%% \score, so any tune name longer than that indent ran off the page's left
%% edge. A plain markup line above the staff uses the full page width
%% instead, so it can never overflow regardless of name length.

%% Some sopranoMusic values carry a manual \break, placed by hand to control
%% line breaks in the full four-part engraving at the recueil's normal
%% staff size. At the dictionary's much smaller size and single-voice
%% layout, that same break point falls in an arbitrary, often awkward
%% spot — stripped here so LilyPond's own line-breaking (already governed
%% by ragged-right for even spacing) decides breaks for this context.
#(define (strip-breaks s)
   (regexp-substitute/global #f "\\\\break" s 'pre 'post))

%% \voiceOne/\voiceTwo exist to offset simultaneous voices sharing one
%% staff (so their rests and stems don't collide) — meaningless for a
%% single melody alone, and their side effect of pushing rests off the
%% staff's center line looks wrong here. Stripped for the dictionary only.
#(define (strip-voice-context s)
   (regexp-substitute/global #f "\\\\voiceOne|\\\\voiceTwo" s 'pre 'post))

%% Most sopranoMusic values are self-contained (either plain absolute
%% pitches, or their own "\relative <pitch> { ... }"). A few instead rely on
%% a \relative wrapped around the whole staff *in the layout file*, outside
%% sopranoMusic's own definition — invisible when sopranoMusic is extracted
%% alone, so those notes were falling back to absolute-pitch interpretation
%% and landing in wildly wrong octaves. Detected here by finding a
%% \relative that appears before the staff's \clef in the layout's \score
%% text, and reapplied around the extracted melody.
#(define (extract-outer-relative score)
   (let ((clef-m (string-match "\\\\clef" score))
         (rel-m (string-match "\\\\relative[ \t]+[a-g][,']*" score)))
     (if (and rel-m clef-m (< (match:start rel-m) (match:start clef-m)))
         (match:substring rel-m 0)
         #f)))

#(define (dict-entry-block rec)
   (let* ((base (assq-ref rec 'base))
          (notes-content (read-utf8-file (string-append source-dir "/" base "_notes.ily")))
          (raw-soprano (strip-voice-context (strip-breaks (extract-variable-value notes-content "sopranoMusic"))))
          (score (assq-ref rec 'score))
          (outer-relative (extract-outer-relative score))
          (soprano-value (if outer-relative
                              (string-append outer-relative " { " raw-soprano " }")
                              raw-soprano))
          (idx (assq-ref rec 'tune-index))
          (zahn (zahn-of idx))
          (title (tune-of idx))
          (composer (translate-composer-text (composer-of idx)))
          (composer-prefix (composer-label-prefix-short (composer-of idx)))
          (meta-plain (if (string-null? composer) "" (string-append "  —  " composer-prefix composer)))
          (zahn-plain (if (string-null? zahn) "" (string-append "  —  Zahn " zahn)))
          (meta-markup (if (string-null? composer)
                            ""
                            (string-append
                              " \\small \\concat { \"  —  \" \""
                              (escape-quotes composer-prefix) "\" \""
                              (escape-quotes composer) "\" }")))
          (zahn-markup (if (string-null? zahn)
                            ""
                            (string-append " \\small \\concat { \"  —  Zahn \" \"" zahn "\" }")))
          ;; A handful of title + composer + Zahn combinations run past the
          ;; page width on one line (long parenthetical composer notes are
          ;; the usual culprit). Fill the first line up to a character budget
          ;; (a rough proxy for rendered width — bold title + small
          ;; composer/Zahn mix proportional fonts — calibrated empirically:
          ;; pixel measurement found real overflow starting at 96 characters)
          ;; and push whatever doesn't fit to a second line, without ever
          ;; splitting the "Zahn N" unit itself across the two lines.
          (char-budget 92)
          (len-title (string-length title))
          (len-with-meta (+ len-title (string-length meta-plain)))
          (len-with-zahn (+ len-with-meta (string-length zahn-plain)))
          (label
            (cond
              ;; Everything fits: unchanged single-line layout.
              ((<= len-with-zahn char-budget)
               (string-append
                 "\\line { \\bold \\fontsize #-1 \"" (escape-quotes title) "\""
                 meta-markup zahn-markup " }"))
              ;; Title + composer/place fit; only "Zahn N" overflows onto its
              ;; own second line.
              ((<= len-with-meta char-budget)
               (string-append
                 "\\column {\n"
                 "  \\line { \\bold \\fontsize #-1 \"" (escape-quotes title) "\""
                 meta-markup " }\n"
                 "  \\line {" zahn-markup " }\n"
                 "}"))
              ;; Even title + composer/place don't fit together: title alone
              ;; on the first line, composer/place and Zahn together below.
              (else
               (string-append
                 "\\column {\n"
                 "  \\line { \\bold \\fontsize #-1 \"" (escape-quotes title) "\" }\n"
                 "  \\line {" meta-markup zahn-markup " }\n"
                 "}")))))
     (string-append
       "\\markup \\column {\n"
       "  \\vspace #0.6\n"
       "  " label "\n"
       "}\n"
       "\\noPageBreak\n"
       "\\score {\n"
       "  \\new Staff \\with {\n"
       "    \\magnifyStaff #(magstep -4)\n"
       "  } {\n"
       "    % A tune spanning two systems must not be split across a page\n"
       "    % break — that leaves a one-measure orphan stranded alone on the\n"
       "    % next page. Forbidding page breaks within this score's own\n"
       "    % columns still allows its systems to break normally; if the\n"
       "    % whole tune doesn't fit, it moves to the next page as one piece\n"
       "    % instead of splitting.\n"
       "    \\override Score.NonMusicalPaperColumn.page-break-permission = ##f\n"
       "    " (dict-clef-key-time score) " " soprano-value "\n"
       "  }\n"
       "}\n")))

#(define dict-content
   (apply string-append (map dict-entry-block dict-records)))

\paper {
  #(set-paper-size "a4")
  #(set-global-staff-size 18)

  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 20\mm
  bottom-margin = 25\mm

  indent = 5\mm
  print-first-page-number = ##f

  oddHeaderMarkup = \markup \fill-line { \null \if \should-print-page-number \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \if \should-print-page-number \fromproperty #'page:page-number-string \null }

  oddFooterMarkup = \markup \fill-line { \null "© 2026 — OpenBach" \null }
  evenFooterMarkup = \markup \fill-line { \null "© 2026 — OpenBach" \null }

  system-system-spacing = #'((basic-distance . 11)
                             (minimum-distance . 7)
                             (padding . 1.5)
                             (stretchability . 40))
  markup-system-spacing = #'((basic-distance . 9)
                             (minimum-distance . 6)
                             (padding . 1.5)
                             (stretchability . 20))

  tocTitleMarkup = \markup \column {
    \fill-line { \null \fontsize #6 \bold "Table des matières" \null }
    \vspace #2
  }
  tocItemMarkup = \markup \fromproperty #'toc:text
}

\layout {
  \context {
    \Staff
    \consists "Merge_rests_engraver"
  }
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

\bookpart {
  \paper {
    ragged-bottom = ##t
    ragged-last-bottom = ##t
    last-bottom-spacing = #'((basic-distance . 4)
                             (minimum-distance . 3.2)
                             (padding . 1)
                             (stretchability . 5))
    oddHeaderMarkup = \markup \column { \fill-line { \null \if \should-print-page-number \fromproperty #'page:page-number-string } \if \should-print-page-number \vspace #3 }
    evenHeaderMarkup = \markup \column { \fill-line { \if \should-print-page-number \fromproperty #'page:page-number-string \null } \if \should-print-page-number \vspace #3 }
  }

  \markup \column {
    \vspace #1
    \line { \combine \draw-line #'(96.76 . 0) \translate #'(0 . 0.7) \draw-line #'(96.76 . 0) }
    \vspace #4
    \fill-line { \null \fontsize #8 \bold "361 CHORALS" \null }
    \vspace #1
    \fill-line { \null \fontsize #6 "de Jean-Sébastien Bach" \null }
    \vspace #2
    \fill-line { \null \image #X #48.7 #"images/Bach_Haussmann_1748.png" \null }
    \vspace #2
    \fill-line { \null \fontsize #4 \italic "pour SATB sur portées de piano sans textes" \null }
    \vspace #1
    \fill-line { \null \fontsize #4 \italic "classés par ordre alphabétique des timbres" \null }
    \vspace #6
    \line { \combine \draw-line #'(96.76 . 0) \translate #'(0 . 0.7) \draw-line #'(96.76 . 0) }
  }
  \pageBreak

  \markup \column {
    \fill-line { \null \fontsize #4 \bold "Présentation générale" \null }
    \vspace #1.5
    \justify {
      Ce recueil réunit 361 chorals, quand l'édition de référence popularisée par Riemenschneider
      chez Breitkopf & Härtel en revendique 371. L'écart tient d'abord à la méthode de comptage :
      Riemenschneider attribue un numéro distinct à chaque occurrence d'un choral dans l'œuvre de Bach,
      y compris lorsque la même harmonisation, strictement identique, est réutilisée telle quelle dans
      deux cantates différentes ou dans une cantate et une Passion — cette même musique y est alors
      comptée deux fois. Ce recueil ne retient qu'une fois chaque réglage musical distinct, quel que
      soit le nombre de ses réemplois, et y ajoute en contrepartie quelques chorals restés hors de
      l'anthologie traditionnelle, rattachés plus tardivement au catalogue BWV.
    }
    \vspace #2.5
    \fill-line { \null \fontsize #4 \bold "Le classement par timbre" \null }
    \vspace #1.5
    \justify {
      Ce recueil classe les chorals selon leur mélodie propre — ce que la tradition hymnologique allemande
      appelle le \italic { timbre }
      (\italic { Choralmelodie } ). Un même timbre a souvent servi, au fil des siècles, à des
      textes très différents : ainsi la mélodie de \italic { O Haupt voll Blut und Wunden } porte
      également \italic { Befiehl du deine Wege } ou \italic { Herzlich tut mich verlangen }, et
      J.-S. Bach l'a harmonisée neuf fois dans des contextes liturgiques variés. Ce recueil rassemble
      sous un même en-tête tous les chorals qui partagent ainsi la même mélodie, quel que soit
      leur texte.
    }
    \vspace #1.5
    \justify {
      L'identification des timbres s'appuie sur un numéro du catalogue de
      Johannes Zahn (\italic { Die Melodien der deutschen evangelischen Kirchenlieder },
      1889-1893), référence encyclopédique recensant plus de 8 000 mélodies de l'hymnologie
      luthérienne. Ce numéro, indiqué pour chaque timbre avec le nom de son compositeur ou de sa
      source la plus ancienne connue, permet de vérifier l'identité mélodique au-delà des
      variations de texte ou de titre.
    }
    \vspace #1.5
    \justify {
      Sous le nom de chaque timbre figurent son compositeur et son numéro Zahn. Lorsque l'auteur de
      la mélodie est inconnu, le nom du compositeur est remplacé par le lieu et la date de sa plus
      ancienne publication connue (par exemple « Freiberg 1655 ») ; un astérisque (*) signale alors
      que ce timbre est probablement lui-même dérivé d'une source encore plus ancienne. Lorsqu'un
      timbre ne compte qu'un seul choral et que celui-ci porte exactement le même titre que sa
      mélodie, les deux informations sont fusionnées en une seule ligne, imprimée en gras, sans
      en-tête séparé.
    }
    \vspace #1.5
    \justify {
      Les timbres sont classés ici par ordre alphabétique de leur nom usuel. Quatre chorals de ce
      recueil échappent à ce classement : trois sont des compositions ou paraphrases libres sans
      timbre traditionnel identifiable (dont deux insertions du \italic { Magnificat allemand },
      BWV 10), et un dernier ne porte aucun numéro BWV ; ils figurent en fin de volume sous la
      mention « origine mélodique inconnue ». Un index des timbres par compositeur figure
      également en fin de volume.
    }
  }
  \pageBreak

  \markuplist \table-of-contents
  \pageBreak
}

#(ly:parser-include-string big-content)

\bookpart {
  %% Unlike the cover/notice/ToC bookpart, this appendix is a dense
  %% reference list: leaving ragged-bottom on here made each page stop
  %% short of the bottom margin whenever the next atomic composer/place
  %% block didn't quite fit, wasting a lot of visible space. Turning it off
  %% lets LilyPond justify content down to the bottom margin as usual;
  %% only the very last page keeps a ragged (non-stretched) bottom.
  \paper {
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    %% With ragged-bottom off, LilyPond treats the gap before the footer
    %% (last-bottom-spacing) as just another spring to squeeze when packing
    %% content tightly — its default minimum-distance is 0, so that gap can
    %% shrink to almost nothing. Force a real minimum (~1cm).
    last-bottom-spacing = #'((basic-distance . 4)
                             (minimum-distance . 3.2)
                             (padding . 1)
                             (stretchability . 5))
  }
  \pageBreak

  \markup \column {
    \vspace #1.5
    \fill-line { \null \fontsize #4 \bold "Index des timbres par compositeur ou lieu/date" \null }
    \vspace #2
    \justify {
      Ce second index complète le classement alphabétique des timbres qui précède : il permet de
      retrouver, non plus un timbre par son nom, mais l'ensemble des mélodies dues à un même
      compositeur — utile pour suivre, par exemple, la contribution mélodique de Johann Crüger ou
      de Philipp Nicolai à travers ce recueil.
    }
    \vspace #1.2
    \justify {
      Les timbres sont d'abord classés par ordre alphabétique du nom de leur compositeur (section
      « Compositeur »). Lorsque l'auteur d'une mélodie est inconnu, le timbre est répertorié dans
      une seconde section, « Lieu/date », classée par ordre alphabétique du lieu de sa plus
      ancienne publication connue (par exemple « Freiberg 1655 ») ; lorsqu'un même lieu a livré
      plusieurs éditions à des dates différentes, celles-ci sont regroupées sous ce lieu. Sauf
      mention contraire, ces lieux se situent en Allemagne actuelle. Une dernière section,
      « Origine inconnue », rassemble les timbres dont ni le compositeur ni la source ne sont
      connus.
    }
    \vspace #1.2
    \justify {
      Pour chaque timbre, le numéro de page indiqué renvoie à son entrée dans l'index alphabétique
      principal, où figure la liste complète des chorals qui en partagent la mélodie.
    }
    \vspace #1.5
  }

  #(ly:parser-include-string composer-index-content)
}

\bookpart {
  %% A dense list of short, single-line entries: same page-fill and
  %% footer-clearance reasoning as the composer index above.
  \paper {
    ragged-bottom = ##f
    ragged-last-bottom = ##t
    %% The global indent (5mm) exists to make room for the main recueil's
    %% "S A"/"T B" instrument labels; each dictionary entry has no such
    %% label on its staff (the tune name is a separate markup line above),
    %% so that indent just pushes its one system in for no reason.
    indent = 0
    %% Full lines stay justified (filled edge to edge, as expected of
    %% engraved music) — only the last, incomplete line of a multi-line
    %% tune is left at its natural width instead of being stretched thin
    %% to match.
    ragged-last = ##t
    %% The 3.2 minimum used for the composer index (pure markup, no
    %% engraved staves) turned out not to be enough here: with real \score
    %% content, the page-breaker still squeezed this gap down to ~1.5mm.
    %% A larger minimum is needed for it to actually hold.
    last-bottom-spacing = #'((basic-distance . 14)
                             (minimum-distance . 12)
                             (padding . 1)
                             (stretchability . 5))
    %% Tuned for short, single-staff melody incipits rather than full
    %% four-part systems: the global system-system-spacing above (basic
    %% distance 11) was calibrated for the much taller SATB systems used
    %% everywhere else in this recueil.
    system-system-spacing = #'((basic-distance . 5)
                               (minimum-distance . 3)
                               (padding . 1)
                               (stretchability . 10))
  }
  \pageBreak

  \markup \column {
    \vspace #1.5
    \fill-line { \null \fontsize #4 \bold "Dictionnaire des timbres" \null }
    \vspace #2
    \justify {
      Ce dernier index réunit, par ordre alphabétique, la mélodie seule — sans texte ni
      harmonisation — de chacun des 207 timbres utilisés dans ce recueil : un repère visuel rapide,
      à la manière des catalogues thématiques tels que celui de Johannes Zahn.
    }
    \vspace #1.2
    \justify {
      Beaucoup de ces mélodies, nées aux XVIe et XVIIe siècles, étaient conçues de façon modale
      (armure minimale, rythme d'origine souvent plus libre) avant d'être régularisées dans la
      notation moderne, mesurée et tonale, employée ici comme dans le reste du recueil.
    }
    \vspace #1.5
  }

  #(ly:parser-include-string dict-content)
}
