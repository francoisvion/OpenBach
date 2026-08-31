\version "2.27.1"

\pointAndClickOff

#(use-modules (ice-9 ftw) (ice-9 regex) (ice-9 textual-ports))

#(define own-dir (dirname (car (ly:input-file-line-char-column (*location*)))))
#(define source-dir (string-append own-dir "/../Chorals avec paroles - notes et layout séparés"))

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

% --- Liturgical-calendar-specific machinery ---------------------------------

% base filename -> liturgical-day-order-index (0-based, chronological church year)
#(define liturgical-index-alist
   '(
    ("Ach,_lieben_Christen,_seid_getrost_(I)_(BWV_114_7)_Jean_Sébastien_Bach" . 57)
    ("Ach_Gott,_vom_Himmel_sieh_darein_(BWV_2_6)_Jean_Sébastien_Bach" . 42)
    ("Ach_Gott,_wie_manches_Herzeleid_(I)_(BWV_3_6)_Jean_Sébastien_Bach" . 12)
    ("Ach_Gott,_wie_manches_Herzeleid_(II)_(BWV_153_9)_Jean_Sébastien_Bach" . 9)
    ("Ach_Gott_und_Herr_(I)_(BWV_48_3)_Jean_Sébastien_Bach" . 59)
    ("Ach_wie_flüchtig,_ach_wie_nichtig_(BWV_26_6)_Jean_Sébastien_Bach" . 64)
    ("Allein_zu_dir,_Herr_Jesu_Christ_(I)_(BWV_33_6)_Jean_Sébastien_Bach" . 53)
    ("Aus_tiefer_Not_schrei_ich_zu_dir_(BWV_38_6)_Jean_Sébastien_Bach" . 61)
    ("Barmherzger_Vater,_höchster_Gott_(BWV_103_6)_Jean_Sébastien_Bach" . 32)
    ("Befiehl_du_deine_Wege_(I)_(BWV_153_5)_Jean_Sébastien_Bach" . 9)
    ("Befiehl_du_deine_Wege_(II)_(BWV_244_44)_Jean_Sébastien_Bach" . 26)
    ("Christ_lag_in_Todesbanden_(I)_(BWV_4_8)_Jean_Sébastien_Bach" . 27)
    ("Christum_wir_sollen_loben_schon_(BWV_121_6)_Jean_Sébastien_Bach" . 5)
    ("Christus,_der_uns_selig_macht_(I)_(BWV_245_15)_Jean_Sébastien_Bach" . 26)
    ("Christus,_der_uns_selig_macht_(II)_(BWV_245_37)_Jean_Sébastien_Bach" . 26)
    ("Das_neugeborne_Kindelein_(BWV_122_6)_Jean_Sébastien_Bach" . 7)
    ("Der_Herr_ist_mein_getreuer_Hirt_(I)_(BWV_104_6)_Jean_Sébastien_Bach" . 31)
    ("Der_Herr_ist_mein_getreuer_Hirt_(II)_(BWV_112_5)_Jean_Sébastien_Bach" . 31)
    ("Du,_o_schönes_Weltgebäude_(I)_(BWV_56_5)_Jean_Sébastien_Bach" . 59)
    ("Du_Friedefürst,_Herr_Jesu_Christ_(BWV_67_7)_Jean_Sébastien_Bach" . 30)
    ("Du_Lebensfürst,_Herr_Jesu_Christ_(I)_(BWV_11_6)_Jean_Sébastien_Bach" . 35)
    ("Du_Lebensfürst,_Herr_Jesu_Christ_(II)_(BWV_43_11)_Jean_Sébastien_Bach" . 35)
    ("Durch_Adams_Fall_ist_ganz_verderbt_[de]_(BWV_18_5)_Jean_Sébastien_Bach" . 18)
    ("Durch_dein_Gefängnis,_Gottes_Sohn_(1_v.)_(BWV_245_22)_Jean_Sébastien_Bach" . 26)
    ("Ein_Kind_geborn_zu_Bethlehem_(BWV_65_2)_Jean_Sébastien_Bach" . 10)
    ("Erhalt_uns,_Herr,_bei_deinem_Wort_(BWV_6_6)_Jean_Sébastien_Bach" . 28)
    ("Ermuntre_dich,_mein_schwacher_Geist_(BWV_248_12)_Jean_Sébastien_Bach" . 5)
    ("Erschienen_ist_der_herrlich_Tag_(BWV_145_5)_Jean_Sébastien_Bach" . 29)
    ("Es_ist_das_Heil_uns_kommen_her_(I)_(BWV_9_7)_Jean_Sébastien_Bach" . 46)
    ("Es_ist_das_Heil_uns_kommen_her_(II)_(BWV_86_6)_Jean_Sébastien_Bach" . 34)
    ("Es_ist_das_Heil_uns_kommen_her_(III)_(BWV_155_5)_Jean_Sébastien_Bach" . 12)
    ("Es_ist_genug_(BWV_60_5)_Jean_Sébastien_Bach" . 64)
    ("Es_woll_uns_Gott_genädig_sein_(I)_(BWV_69_6)_Jean_Sébastien_Bach" . 73)
    ("Freu_dich_sehr,_o_meine_Seele_(BWV_19_7)_Jean_Sébastien_Bach" . 71)
    ("Freuet_euch,_ihr_Christen_alle_(BWV_40_8)_Jean_Sébastien_Bach" . 5)
    ("Fröhlich_soll_mein_Herze_springen_(BWV_248_33)_Jean_Sébastien_Bach" . 6)
    ("Gelobet_seist_du,_Jesu_Christ_(I)_(BWV_64_2)_Jean_Sébastien_Bach" . 6)
    ("Gelobet_seist_du,_Jesu_Christ_(II)_(BWV_91_6)_Jean_Sébastien_Bach" . 4)
    ("Gott_Vater,_sende_deinen_Geist_(I)_(BWV_74_8)_Jean_Sébastien_Bach" . 37)
    ("Gott_Vater,_sende_deinen_Geist_(II)_(BWV_108_6)_Jean_Sébastien_Bach" . 33)
    ("Hast_du_denn,_Jesu,_dein_Angesicht_gänzlich_verborgen_(BWV_57_8)_Jean_Sébastien_Bach" . 5)
    ("Helft_mir_Gotts_Güte_preisen_(I)_(BWV_16_6)_Jean_Sébastien_Bach" . 8)
    ("Helft_mir_Gotts_Güte_preisen_(II)_(BWV_28_6)_Jean_Sébastien_Bach" . 7)
    ("Herr,_wie_du_willst,_so_schicks_mit_mir_(BWV_156_6)_Jean_Sébastien_Bach" . 13)
    ("Herr_Christ,_der_einge_Gottessohn_(I)_(BWV_96_6)_Jean_Sébastien_Bach" . 58)
    ("Herr_Christ,_der_einge_Gottessohn_(II)_(BWV_164_6)_Jean_Sébastien_Bach" . 53)
    ("Herr_Jesu_Christ,_du_höchstes_Gut_(I)_(BWV_113_8)_Jean_Sébastien_Bach" . 51)
    ("Herr_Jesu_Christ,_du_höchstes_Gut_(II)_(BWV_168_6)_Jean_Sébastien_Bach" . 49)
    ("Herr_Jesu_Christ,_ich_schrei_zu_dir_(I)_(BWV_48_7)_Jean_Sébastien_Bach" . 59)
    ("Herr_Jesu_Christ,_wahr_Mensch_und_Gott_(I)_(BWV_127_5)_Jean_Sébastien_Bach" . 19)
    ("Herzlich_lieb_hab_ich_dich,_o_Herr_(I)_(BWV_174_5)_Jean_Sébastien_Bach" . 38)
    ("Herzlich_lieb_hab_ich_dich,_o_Herr_(II)_(BWV_245_40)_Jean_Sébastien_Bach" . 26)
    ("Herzlich_tut_mich_verlangen_(BWV_161_6)_Jean_Sébastien_Bach" . 56)
    ("Herzliebster_Jesu,_was_hast_du_verbrochen_(I)_(BWV_245_3a)_Jean_Sébastien_Bach" . 26)
    ("Herzliebster_Jesu,_was_hast_du_verbrochen_(II)_(BWV_245_3b)_Jean_Sébastien_Bach" . 26)
    ("Herzliebster_Jesu_(I)_(BWV_244_3)_Jean_Sébastien_Bach" . 26)
    ("Herzliebster_Jesu_(II)_(BWV_244_46)_Jean_Sébastien_Bach" . 26)
    ("Herzliebster_Jesu_(III)_(BWV_245_17)_Jean_Sébastien_Bach" . 26)
    ("Hilf,_Herr_Jesu,_lass_gelingen_(I)_(BWV_248_42)_Jean_Sébastien_Bach" . 8)
    ("Ich_armer_Mensch,_ich_armer_Sünder_(BWV_179_6)_Jean_Sébastien_Bach" . 51)
    ("Ich_dank_dir,_lieber_Herre_(I)_(BWV_37_6)_Jean_Sébastien_Bach" . 35)
    ("Ich_freue_mich_in_dir_(BWV_133_6)_Jean_Sébastien_Bach" . 6)
    ("Ich_hab_in_Gottes_Herz_und_Sinn_(BWV_65_7)_Jean_Sébastien_Bach" . 10)
    ("Ich_ruf_zu_dir,_Herr_Jesu_Christ_(I)_(BWV_177_5)_Jean_Sébastien_Bach" . 44)
    ("Ich_steh_an_deiner_Krippen_hier_(BWV_248_59)_Jean_Sébastien_Bach" . 10)
    ("Ihr_Gestirn,_ihr_hohlen_Lüfte_(I)_(BWV_248_53)_Jean_Sébastien_Bach" . 9)
    ("In_allen_meinen_Taten_(I)_(BWV_13_6)_Jean_Sébastien_Bach" . 12)
    ("In_allen_meinen_Taten_(II)_(BWV_44_7)_Jean_Sébastien_Bach" . 36)
    ("In_dich_hab_ich_gehoffet,_Herr_(BWV_244_32)_Jean_Sébastien_Bach" . 26)
    ("Ist_Gott_mein_Schild_und_Helfersmann_(BWV_85_6)_Jean_Sébastien_Bach" . 31)
    ("Jesu,_der_du_meine_Seele_(I)_(BWV_78_7)_Jean_Sébastien_Bach" . 54)
    ("Jesu,_meine_Freude_(I)_(BWV_64_8)_Jean_Sébastien_Bach" . 6)
    ("Jesu,_meine_Freude_(II)_(BWV_81_7)_Jean_Sébastien_Bach" . 14)
    ("Jesu,_meiner_Seelen_Wonne_(I)_(BWV_154_3)_Jean_Sébastien_Bach" . 11)
    ("Jesu,_nun_sei_gepreiset_(I)_(BWV_41_6)_Jean_Sébastien_Bach" . 8)
    ("Jesu,_nun_sei_gepreiset_(II)_(BWV_190_7)_Jean_Sébastien_Bach" . 8)
    ("Jesu_Leiden,_Pein_und_Tod_(I)_(BWV_159_5)_Jean_Sébastien_Bach" . 19)
    ("Jesu_Leiden,_Pein_und_Tod_(II)_(BWV_245_14)_Jean_Sébastien_Bach" . 26)
    ("Jesu_Leiden,_Pein_und_Tod_(III)_(BWV_245_28)_Jean_Sébastien_Bach" . 26)
    ("Komm,_Heiliger_Geist,_Herre_Gott_(BWV_226_2)_Jean_Sébastien_Bach" . 74)
    ("Kommt,_lasst_euch_den_Herren_lehren_(BWV_39_7)_Jean_Sébastien_Bach" . 41)
    ("Lasst_Furcht_und_Pein_(BWV_248_35)_Jean_Sébastien_Bach" . 6)
    ("Liebster_Gott,_wenn_werd_ich_sterben_(BWV_8_6)_Jean_Sébastien_Bach" . 56)
    ("Liebster_Immanuel,_Herzog_der_Frommen_(BWV_123_6)_Jean_Sébastien_Bach" . 10)
    ("Lobt_Gott,_ihr_Christen,_allzugleich_(I)_(BWV_151_5)_Jean_Sébastien_Bach" . 6)
    ("Mache_dich,_mein_Geist,_bereit_(BWV_115_6)_Jean_Sébastien_Bach" . 62)
    ("Meine_Seele_erhebt_den_Herren_(I)_(BWV_10_7)_Jean_Sébastien_Bach" . 70)
    ("Meinen_Jesum_lass_ich_nicht_(I)_(BWV_70_11)_Jean_Sébastien_Bach" . 66)
    ("Meinen_Jesum_lass_ich_nicht_(II)_(BWV_154_8)_Jean_Sébastien_Bach" . 11)
    ("Mit_Fried_und_Freud_ich_fahr_dahin_(I)_(BWV_83_5)_Jean_Sébastien_Bach" . 68)
    ("Nimm_von_uns,_Herr,_du_treuer_Gott_(I)_(BWV_90_5)_Jean_Sébastien_Bach" . 65)
    ("Nimm_von_uns,_Herr,_du_treuer_Gott_(II)_(BWV_101_7)_Jean_Sébastien_Bach" . 50)
    ("Nun,_liebe_Seel,_nun_ist_es_Zeit_(BWV_248_46)_Jean_Sébastien_Bach" . 9)
    ("Nun_bitten_wir_den_Heiligen_Geist_(I)_(BWV_169_7)_Jean_Sébastien_Bach" . 58)
    ("Nun_bitten_wir_den_Heiligen_Geist_(II)_(BWV_197_5)_Jean_Sébastien_Bach" . 72)
    ("Nun_danket_alle_Gott_(I)_(BWV_252)_Jean_Sébastien_Bach" . 72)
    ("Nun_komm,_der_Heiden_Heiland_(I)_(BWV_36_8)_Jean_Sébastien_Bach" . 0)
    ("Nun_komm,_der_Heiden_Heiland_(II)_(BWV_62_6)_Jean_Sébastien_Bach" . 0)
    ("Nun_lob,_mein_Seel,_den_Herren_(I)_(BWV_17_7)_Jean_Sébastien_Bach" . 54)
    ("Nun_lob,_mein_Seel,_den_Herren_(II)_(BWV_29_8)_Jean_Sébastien_Bach" . 73)
    ("O_Gott,_du_frommer_Gott_(I)_(BWV_24_6)_Jean_Sébastien_Bach" . 44)
    ("O_Gott,_du_frommer_Gott_(II)_(BWV_45_7)_Jean_Sébastien_Bach" . 48)
    ("O_Haupt_voll_Blut_und_Wunden_(I)_(BWV_244_15)_Jean_Sébastien_Bach" . 26)
    ("O_Haupt_voll_Blut_und_Wunden_(II)_(BWV_244_54)_Jean_Sébastien_Bach" . 26)
    ("O_Haupt_voll_Blut_und_Wunden_(III)_(BWV_244_62)_Jean_Sébastien_Bach" . 26)
    ("O_Herre_Gott,_dein_göttlich_Wort_(BWV_184_5)_Jean_Sébastien_Bach" . 39)
    ("O_Welt,_sieh_hier_dein_Leben_(I)_(BWV_244_10)_Jean_Sébastien_Bach" . 26)
    ("O_Welt,_sieh_hier_dein_Leben_(II)_(BWV_244_37)_Jean_Sébastien_Bach" . 26)
    ("O_Welt,_sieh_hier_dein_Leben_(III)_(BWV_245_11)_Jean_Sébastien_Bach" . 26)
    ("O_großer_Gott_von_Macht_(BWV_46_6)_Jean_Sébastien_Bach" . 50)
    ("Schau,_lieber_Gott,_wie_meine_Feind_(BWV_153_1)_Jean_Sébastien_Bach" . 9)
    ("Schmücke_dich,_o_liebe_Seele_(BWV_180_7)_Jean_Sébastien_Bach" . 60)
    ("Schwing_dich_auf_zu_deinem_Gott_(BWV_40_6)_Jean_Sébastien_Bach" . 5)
    ("Sei_Lob_und_Ehr_dem_höchsten_Gut_(II)_(BWV_251)_Jean_Sébastien_Bach" . 72)
    ("Selig_ist_die_Seele_(BWV_87_7)_Jean_Sébastien_Bach" . 34)
    ("Singen_wir_aus_Herzensgrund_(BWV_187_7)_Jean_Sébastien_Bach" . 47)
    ("So_wahr_ich_lebe,_spricht_dein_Gott_(BWV_102_7)_Jean_Sébastien_Bach" . 50)
    ("Treuer_Gott,_ich_muss_dir_klagen_(I)_(BWV_25_6)_Jean_Sébastien_Bach" . 54)
    ("Treuer_Gott,_ich_muss_dir_klagen_(II)_(BWV_194_6)_Jean_Sébastien_Bach" . 40)
    ("Tröstet,_tröstet_meine_Lieben_(BWV_30_6)_Jean_Sébastien_Bach" . 69)
    ("Valet_will_ich_dir_geben_(I)_(BWV_245_26)_Jean_Sébastien_Bach" . 26)
    ("Vater_unser_im_Himmelreich_(I)_(BWV_245_5a)_Jean_Sébastien_Bach" . 26)
    ("Vater_unser_im_Himmelreich_(II)_(BWV_245_5b)_Jean_Sébastien_Bach" . 26)
    ("Verleih_uns_Frieden_gnädlich_(I)_(BWV_42_7)_Jean_Sébastien_Bach" . 30)
    ("Verleih_uns_Frieden_gnädlich_(II)_(BWV_126_6)_Jean_Sébastien_Bach" . 18)
    ("Vom_Himmel_hoch,_da_komm_ich_her_(BWV_248_9)_Jean_Sébastien_Bach" . 4)
    ("Von_Gott_will_ich_nicht_lassen_(I)_(BWV_73_5)_Jean_Sébastien_Bach" . 13)
    ("Wach_auf,_mein_Herz,_und_singe_(BWV_194_12)_Jean_Sébastien_Bach" . 40)
    ("Wachet_auf,_ruft_uns_die_Stimme_(BWV_140_7)_Jean_Sébastien_Bach" . 67)
    ("Warum_betrübst_du_dich,_mein_Herz_(I)_(BWV_47_5)_Jean_Sébastien_Bach" . 57)
    ("Was_Gott_tut,_das_ist_wohlgetan_(I)_(BWV_69a_6)_Jean_Sébastien_Bach" . 52)
    ("Was_Gott_tut,_das_ist_wohlgetan_(II)_(BWV_144_3)_Jean_Sébastien_Bach" . 17)
    ("Was_Gott_tut,_das_ist_wohlgetan_(III)_(BWV_250)_Jean_Sébastien_Bach" . 72)
    ("Was_alle_Weisheit_in_der_Welt_(BWV_176_6)_Jean_Sébastien_Bach" . 40)
    ("Was_frag_ich_nach_der_Welt_(I)_(BWV_64_4)_Jean_Sébastien_Bach" . 6)
    ("Was_frag_ich_nach_der_Welt_(II)_(BWV_94_8)_Jean_Sébastien_Bach" . 49)
    ("Was_mein_Gott_will,_das_g'scheh_allzeit_(I)_(BWV_144_6)_Jean_Sébastien_Bach" . 17)
    ("Was_mein_Gott_will,_das_g'scheh_allzeit_(II)_(BWV_244_25)_Jean_Sébastien_Bach" . 26)
    ("Weg,_mein_Herz,_mit_den_Gedanken_(BWV_32_6)_Jean_Sébastien_Bach" . 11)
    ("Welt,_ade!_Ich_bin_dein_müde_(BWV_27_6)_Jean_Sébastien_Bach" . 56)
    ("Wenn_einer_alle_Ding_verstünd_(v._8)?_(BWV_77_6)_Jean_Sébastien_Bach" . 53)
    ("Wer_nur_den_lieben_Gott_lässt_walten_(I)_(BWV_88_7)_Jean_Sébastien_Bach" . 45)
    ("Wer_nur_den_lieben_Gott_lässt_walten_(II)_(BWV_197_10)_Jean_Sébastien_Bach" . 72)
    ("Wer_weiß,_wie_nahe_mir_mein_Ende_(I)_(BWV_84_5)_Jean_Sébastien_Bach" . 17)
    ("Wer_weiß,_wie_nahe_mir_mein_Ende_(II)_(BWV_166_6)_Jean_Sébastien_Bach" . 33)
    ("Werde_munter_mein_Gemüte_(I)_(BWV_55_5)_Jean_Sébastien_Bach" . 62)
    ("Werde_munter_mein_Gemüte_(II)_(BWV_244_40)_Jean_Sébastien_Bach" . 26)
    ("Wie_schön_leuchtet_der_Morgenstern_(I)_(BWV_36_4)_Jean_Sébastien_Bach" . 0)
    ("Wie_schön_leuchtet_der_Morgenstern_(II)_(BWV_172_6)_Jean_Sébastien_Bach" . 37)
    ("Wie_soll_ich_dich_empfangen_(BWV_248_5)_Jean_Sébastien_Bach" . 4)
    ("Wir_Christenleut_habn_jetzund_Freud_(I)_(BWV_40_3)_Jean_Sébastien_Bach" . 5)
    ("Wir_Christenleut_habn_jetzund_Freud_(II)_(BWV_110_7)_Jean_Sébastien_Bach" . 4)
    ("Wir_singen_dir,_Immanuel_(BWV_248_23)_Jean_Sébastien_Bach" . 5)
    ("Wo_soll_ich_fliehen_hin_(I)_(BWV_5_7)_Jean_Sébastien_Bach" . 59)
    ("Wo_soll_ich_fliehen_hin_(II)_(BWV_89_6)_Jean_Sébastien_Bach" . 62)
    ("Wo_soll_ich_fliehen_hin_(III)_(BWV_136_6)_Jean_Sébastien_Bach" . 48)
    ("Wo_soll_ich_fliehen_hin_(IV)_(BWV_148_6)_Jean_Sébastien_Bach" . 57)
    ("Wär_Gott_nicht_mit_uns_diese_Zeit_(I)_(BWV_14_5)_Jean_Sébastien_Bach" . 14)
    ("Zeuch_ein_zu_deinen_Toren_(BWV_183_5)_Jean_Sébastien_Bach" . 36)
   ))

% liturgical-day-order-index -> (season-french . day-french)
#(define liturgical-day-info-alist
   '(
    (0 . ("Avent" . "1er dimanche de l'Avent"))
    (1 . ("Avent" . "2e dimanche de l'Avent"))
    (2 . ("Avent" . "3e dimanche de l'Avent"))
    (3 . ("Avent" . "4e dimanche de l'Avent"))
    (4 . ("Noël" . "Jour de Noël"))
    (5 . ("Noël" . "2e jour de Noël (saint Étienne)"))
    (6 . ("Noël" . "3e jour de Noël (saint Jean)"))
    (7 . ("Noël" . "Dimanche après Noël"))
    (8 . ("Nouvel An" . "Jour de l'An (Circoncision)"))
    (9 . ("Nouvel An" . "Dimanche après le Nouvel An"))
    (10 . ("Épiphanie" . "Épiphanie"))
    (11 . ("Épiphanie" . "1er dimanche après l'Épiphanie"))
    (12 . ("Épiphanie" . "2e dimanche après l'Épiphanie"))
    (13 . ("Épiphanie" . "3e dimanche après l'Épiphanie"))
    (14 . ("Épiphanie" . "4e dimanche après l'Épiphanie"))
    (15 . ("Épiphanie" . "5e dimanche après l'Épiphanie"))
    (16 . ("Épiphanie" . "6e dimanche après l'Épiphanie"))
    (17 . ("Pré-Carême" . "Septuagésime"))
    (18 . ("Pré-Carême" . "Sexagésime"))
    (19 . ("Pré-Carême" . "Quinquagésime"))
    (20 . ("Carême" . "Invocavit"))
    (21 . ("Carême" . "Reminiscere"))
    (22 . ("Carême" . "Oculi"))
    (23 . ("Carême" . "Laetare"))
    (24 . ("Carême" . "Judica"))
    (25 . ("Carême" . "Dimanche des Rameaux"))
    (26 . ("Vendredi saint" . "Vendredi saint"))
    (27 . ("Pâques" . "Dimanche de Pâques"))
    (28 . ("Pâques" . "Lundi de Pâques"))
    (29 . ("Pâques" . "Mardi de Pâques"))
    (30 . ("Pâques" . "Quasimodogeniti"))
    (31 . ("Pâques" . "Misericordias Domini"))
    (32 . ("Pâques" . "Jubilate"))
    (33 . ("Pâques" . "Cantate"))
    (34 . ("Pâques" . "Rogate"))
    (35 . ("Ascension" . "Jour de l'Ascension"))
    (36 . ("Ascension" . "Exaudi"))
    (37 . ("Pentecôte" . "Dimanche de Pentecôte"))
    (38 . ("Pentecôte" . "Lundi de Pentecôte"))
    (39 . ("Pentecôte" . "Mardi de Pentecôte"))
    (40 . ("Trinité" . "Dimanche de la Trinité"))
    (41 . ("Trinité" . "1er dimanche après la Trinité"))
    (42 . ("Trinité" . "2e dimanche après la Trinité"))
    (43 . ("Trinité" . "3e dimanche après la Trinité"))
    (44 . ("Trinité" . "4e dimanche après la Trinité"))
    (45 . ("Trinité" . "5e dimanche après la Trinité"))
    (46 . ("Trinité" . "6e dimanche après la Trinité"))
    (47 . ("Trinité" . "7e dimanche après la Trinité"))
    (48 . ("Trinité" . "8e dimanche après la Trinité"))
    (49 . ("Trinité" . "9e dimanche après la Trinité"))
    (50 . ("Trinité" . "10e dimanche après la Trinité"))
    (51 . ("Trinité" . "11e dimanche après la Trinité"))
    (52 . ("Trinité" . "12e dimanche après la Trinité"))
    (53 . ("Trinité" . "13e dimanche après la Trinité"))
    (54 . ("Trinité" . "14e dimanche après la Trinité"))
    (55 . ("Trinité" . "15e dimanche après la Trinité"))
    (56 . ("Trinité" . "16e dimanche après la Trinité"))
    (57 . ("Trinité" . "17e dimanche après la Trinité"))
    (58 . ("Trinité" . "18e dimanche après la Trinité"))
    (59 . ("Trinité" . "19e dimanche après la Trinité"))
    (60 . ("Trinité" . "20e dimanche après la Trinité"))
    (61 . ("Trinité" . "21e dimanche après la Trinité"))
    (62 . ("Trinité" . "22e dimanche après la Trinité"))
    (63 . ("Trinité" . "23e dimanche après la Trinité"))
    (64 . ("Trinité" . "24e dimanche après la Trinité"))
    (65 . ("Trinité" . "25e dimanche après la Trinité"))
    (66 . ("Trinité" . "26e dimanche après la Trinité"))
    (67 . ("Trinité" . "27e dimanche après la Trinité"))
    (68 . ("Fêtes fixes" . "Purification de Marie (2 février)"))
    (69 . ("Fêtes fixes" . "Nativité de saint Jean-Baptiste (24 juin)"))
    (70 . ("Fêtes fixes" . "Visitation de Marie (2 juillet)"))
    (71 . ("Fêtes fixes" . "Saint Michel et les anges (29 septembre)"))
    (72 . ("Occasions particulières" . "Mariage"))
    (73 . ("Occasions particulières" . "Inauguration du conseil municipal"))
    (74 . ("Occasions particulières" . "Funérailles"))
   ))

#(define UNKNOWN-INDEX 9999)

#(define (liturgical-index base)
   (let ((p (assoc base liturgical-index-alist)))
     (if p (cdr p) UNKNOWN-INDEX)))

#(define (day-info idx)
   (let ((p (assoc idx liturgical-day-info-alist)))
     (if p (cdr p) (cons "Origine liturgique inconnue" "Chorals sans occasion liturgique connue"))))

#(define (season-of idx) (car (day-info idx)))
#(define (day-of idx) (cdr (day-info idx)))

#(define (liturgical-less? a b)
   (let ((ia (liturgical-index (assq-ref a 'base)))
         (ib (liturgical-index (assq-ref b 'base))))
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
           (cons 'liturgical-index (liturgical-index base))
           (cons 'score (extract-score-block content)))))

#(define records (map make-record layout-files))
#(define sorted-records (sort records liturgical-less?))

#(define (count-by-index records)
   (let loop ((recs records) (acc '()))
     (if (null? recs)
         acc
         (let* ((idx (assq-ref (car recs) 'liturgical-index))
                (existing (assoc idx acc)))
           (loop (cdr recs)
                 (if existing
                     (map (lambda (p) (if (equal? (car p) idx) (cons idx (+ 1 (cdr p))) p)) acc)
                     (cons (cons idx 1) acc)))))))

#(define day-counts (count-by-index sorted-records))

#(define (day-count idx)
   (let ((p (assoc idx day-counts)))
     (if p (cdr p) 0)))

%% toc-item-inner returns the bare markup expression (no leading \markup
%% keyword), so it can be embedded directly inside another already-open
%% \column {...} (used for the day's first piece, merged with its headers).
#(define (toc-item-inner title opus)
   (let* ((title-parts (wrap-poet title))
          (title-parts (if (= (length title-parts) 1)
                            (wrap-long-text (car title-parts) 55)
                            title-parts))
          (row (string-append
                 "\\fill-with-pattern #1 #RIGHT \".\" \\line { \\override #'(line-width . 73) \\fill-with-pattern #1 #RIGHT \".\" \""
                 (car title-parts) "\" \"\" \"" opus "\" } \\fromproperty #'toc:page")))
     (if (= (length title-parts) 1)
         (string-append "{ " row " }")
         (string-append "\\column { " row
                         " \\line { \"" (cadr title-parts) "\" } \\vspace #0.33 }"))))

%% Season/day headers are split into a toc-line (embedded into the combined
%% tocItem of the day's first piece, so a header can never end up alone at
%% the bottom of a ToC page) and a body-block (the visual header printed
%% in the actual pages, glued to what follows via \noPageBreak).

#(define (season-toc-line idx first-group)
   (string-append
     (if first-group "" "  \\vspace #1\n")
     "  \\line { \\bold \\fontsize #3 \"" (escape-quotes (season-of idx)) "\" }\n"))

#(define (season-body-block idx first-group)
   (let ((label (escape-quotes (season-of idx))))
     (string-append
       (if first-group "" "\\pageBreak\n")
       "\\markup \\column {\n"
       "  \\vspace #1\n"
       "  \\fill-line { \\null \\fontsize #5 \\bold \"" label "\" \\null }\n"
       "  \\vspace #0.5\n"
       "  \\line { \\combine \\draw-line #'(96.76 . 0) \\translate #'(0 . 0.7) \\draw-line #'(96.76 . 0) }\n"
       "  \\vspace #1\n"
       "}\n"
       "\\noPageBreak\n")))

#(define (day-toc-line idx)
   (let ((label (escape-quotes (day-of idx)))
         (count (number->string (day-count idx))))
     (string-append
       "  \\vspace #0.6\n"
       "  \\line { \\bold \\fontsize #1 \"" label "\" \\small \\concat { \" (\" \"" count "\" \")\" } }\n"
       "  \\vspace #0.4\n")))

#(define (day-body-block idx)
   (let ((label (escape-quotes (day-of idx))))
     (string-append
       "\\markup \\column {\n"
       "  \\vspace #1\n"
       "  \\fill-line { \\null \\fontsize #2 \\bold \"" label "\" \\null }\n"
       "  \\vspace #0.5\n"
       "}\n"
       "\\noPageBreak\n")))

#(define (piece-toc-row rec)
   (toc-item-inner (escape-quotes (strip-verse-marks (assq-ref rec 'title))) (assq-ref rec 'opus)))

#(define (piece-body rec)
   (let* ((base (assq-ref rec 'base))
          (notes-path (string-append source-dir "/" base "_notes.ily"))
          (title-markup-inner (runs->concat-markup (assq-ref rec 'title-runs)))
          (subtitle (assq-ref rec 'subtitle))
          (opus (assq-ref rec 'opus))
          (poet (assq-ref rec 'poet))
          (score (assq-ref rec 'score))
          (piece-markup (if subtitle
                             (string-append "\\markup \\column { \\bold \\concat {" title-markup-inner " }" (small-lines (wrap-long-text subtitle 60)) " }")
                             (string-append "\\markup \\bold \\concat {" title-markup-inner " }")))
          (opus-field (if poet
                          (string-append "\\markup \\right-column { \"" opus "\"" (small-lines (wrap-poet (abbreviate-poet poet))) " }")
                          (string-append "\"" opus "\""))))
     (string-append
       (read-utf8-file notes-path)
       "\n"
       (inject-header score piece-markup opus-field)
       "\n")))

#(define (build-grouped-content records)
   (let loop ((recs records) (prev-idx #f) (first #t) (acc '()))
     (if (null? recs)
         (apply string-append (reverse acc))
         (let* ((rec (car recs))
                (idx (assq-ref rec 'liturgical-index))
                (score (assq-ref rec 'score))
                (new-season (or (not prev-idx) (not (string=? (season-of idx) (season-of prev-idx)))))
                (new-day (or (not prev-idx) (not (= idx prev-idx))))
                (season-body (if new-season (season-body-block idx first) ""))
                (day-body (if new-day (day-body-block idx) ""))
                (piece-chunk
                  (if (not score)
                      ""
                      (string-append
                        (if new-day
                            ;; The trailing \vspace restores the bottom padding
                            ;; that space-lines gives a standalone row but not a
                            ;; multi-line column, so the first inter-row gap of a
                            ;; day matches the ~62px of the following rows instead
                            ;; of coming out tighter (~50px). See the same fix in
                            ;; the "par timbre" recueil.
                            (string-append
                              "\\tocItem \\markup \\column {\n"
                              (if new-season (season-toc-line idx first) "")
                              (day-toc-line idx)
                              "  \\vspace #0.3\n"
                              "  " (piece-toc-row rec) "\n"
                              "  \\vspace #0.19\n"
                              "}\n")
                            (string-append "\\tocItem \\markup " (piece-toc-row rec) "\n"))
                        (piece-body rec)))))
           (loop (cdr recs) idx #f
                 (cons piece-chunk (cons day-body (cons season-body acc))))))))

#(define big-content
   (build-grouped-content sorted-records))

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
    \fill-line { \null \fontsize #4 \italic "pour SATB sur portées de piano avec textes" \null }
    \vspace #1
    \fill-line { \null \fontsize #4 \italic "classés selon le calendrier liturgique luthérien" \null }
    \vspace #6
    \line { \combine \draw-line #'(96.76 . 0) \translate #'(0 . 0.7) \draw-line #'(96.76 . 0) }
  }
  \pageBreak

  \markup \column {
    \vspace #0.8
    \fill-line { \null \fontsize #4 \bold "Présentation générale" \null }
    \vspace #2
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
    \vspace #3
    \fill-line { \null \fontsize #4 \bold "Le calendrier liturgique luthérien" \null }
    \vspace #2
    \justify {
      L'année liturgique luthérienne du temps de J.-S. Bach s'organise en deux grands cycles
      complémentaires : le cycle de Noël, qui va de l'Avent à l'Épiphanie et médite
      l'Incarnation, et le cycle de Pâques, qui va du Carême au temps après la Trinité
      et médite la Rédemption. Contrairement à l'année civile, elle commence non pas
      le 1er janvier mais au premier dimanche de l'Avent, fin novembre ou début
      décembre. Chaque dimanche et chaque fête possède ses lectures propres (épître
      et évangile), fixées par un lectionnaire hérité du Moyen Âge, et c'est sur ces
      textes que Bach compose, dimanche après dimanche, les cantates dont sont
      extraits la plupart des chorals de ce recueil. Ceux-ci suivent ici cet ordre,
      tels qu'ils auraient résonné au fil d'une année liturgique complète dans les
      églises Saint-Thomas et Saint-Nicolas de Leipzig.
    }
    \vspace #1.5
    \fill-line { \null \bold "L'Avent" \null }
    \justify {
      (4 dimanches précédant Noël) ouvre l'année liturgique et médite la double
      venue du Christ : son incarnation passée et son retour attendu. Seul le
      premier dimanche de l'Avent a laissé des cantates avec chorals (dont la
      célèbre \italic { Nun komm, der Heiden Heiland }, BWV 61 et 62) : à Leipzig,
      en effet, les trois dimanches suivants relevaient du \italic { tempus clausum },
      un temps de jeûne musical où l'orgue et la musique concertante se taisaient
      dans les églises principales, à l'exception de cette entrée solennelle dans
      l'Avent.
    }
    \vspace #0.9
    \fill-line { \null \bold "Noël et son octave" \null }
    \justify {
      rassemblent le jour de Noël (25 décembre), le deuxième jour (26 décembre,
      fête de saint Étienne, premier martyr), le troisième jour (27 décembre, fête
      de saint Jean l'évangéliste) et le dimanche dans l'octave de Noël. C'est pour
      ce cycle que Bach compose en 1734 son \italic { Oratorio de Noël } (BWV 248),
      six cantates données lors des principales fêtes de Noël au Nouvel An et à
      l'Épiphanie, riche en chorals populaires (\italic { Wie soll ich dich
      empfangen }, \italic { Ich steh an deiner Krippen hier }...).
    }
  }
  \pageBreak

  \markup \column {
    \vspace #0.9
    \fill-line { \null \bold "Le Nouvel An et le temps qui suit" \null }
    \justify {
      comprennent le jour de l'An, qui n'est pas seulement le premier jour du
      calendrier civil mais la fête de la Circoncision du Christ (huitième jour
      après sa naissance selon la coutume juive), et le dimanche après le Nouvel
      An lorsque le calendrier le permet, avant l'Épiphanie.
    }
    \vspace #0.9
    \fill-line { \null \bold "L'Épiphanie" \null }
    \justify {
      (6 janvier) célèbre la manifestation du Christ au monde par la visite des
      Mages, et se prolonge sur un nombre variable de dimanches (jusqu'à six)
      selon la date, mobile, de Pâques : plus Pâques est tardive, plus le temps
      après l'Épiphanie s'allonge avant de céder la place au pré-Carême.
    }
    \vspace #0.9
    \fill-line { \null \bold "Le pré-Carême" \null }
    \justify {
      groupe trois dimanches aux noms latins évocateurs — Septuagésime,
      Sexagésime, Quinquagésime — qui désignent approximativement le 70e, le
      60e et le 50e jour avant Pâques ; ils annoncent et préparent le temps de
      pénitence à venir sans en observer encore le jeûne.
    }
  }
  \pageBreak

  \markup \column {
    \fill-line { \null \bold "Le Carême" \null }
    \justify {
      quarante jours de préparation à Pâques à l'imitation du jeûne du Christ au
      désert, comprend les dimanches Invocavit, Reminiscere, Oculi, Laetare et
      Judica, chacun nommé d'après les premiers mots latins de l'introït chanté
      ce jour-là, avant que le dimanche des Rameaux n'ouvre la Semaine sainte.
    }
    \vspace #0.9
    \fill-line { \null \bold "Le Vendredi saint" \null }
    \justify {
      commémore la Passion et la mort du Christ en croix ; c'est le jour des
      grandes Passions liturgiques de Bach, la \italic { Passion selon saint Jean }
      (BWV 245, créée en 1724) et la \italic { Passion selon saint Matthieu }
      (BWV 244, créée en 1727), toutes deux ponctuées de chorals de la Passion,
      au premier rang desquels \italic { O Haupt voll Blut und Wunden }.
    }
    \vspace #0.9
    \fill-line { \null \bold "Pâques" \null }
    \justify {
      réunit le dimanche, le lundi et le mardi de la fête, puis une série de
      dimanches nommés eux aussi d'après leur introït latin — Quasimodogeniti,
      Misericordias Domini, Jubilate, Cantate, Rogate — qui déploient sur près
      de six semaines la joie de la Résurrection.
    }
    \vspace #0.9
    \fill-line { \null \bold "L'Ascension" \null }
    \justify {
      quarante jours après Pâques, tombe toujours un jeudi et célèbre l'élévation
      du Christ ressuscité auprès du Père ; le dimanche Exaudi, dernier de la
      saison pascale, la suit et prépare à la Pentecôte.
    }
    \vspace #0.9
    \fill-line { \null \bold "La Pentecôte" \null }
    \justify {
      — dimanche, lundi et mardi — commémore la descente de l'Esprit saint sur
      les apôtres cinquante jours après Pâques, et clôt traditionnellement le
      cycle des grandes fêtes chrétiennes.
    }
    \vspace #0.9
    \fill-line { \null \bold "Le temps après la Trinité" \null }
    \justify {
      de la fête de la Trinité (dimanche suivant la Pentecôte) jusqu'au
      vingt-septième dimanche après la Trinité selon les années, constitue à lui
      seul près de la moitié de l'année liturgique : sans fête propre à célébrer,
      ces longs dimanches ordinaires laissent le champ libre à l'enseignement
      moral et à la méditation, et comptent parmi les cantates les plus nombreuses
      et les plus variées de Bach.
    }
    \vspace #0.9
    \fill-line { \null \bold "Les fêtes fixes" \null }
    \justify {
      s'ajoutent au cycle mobile des dimanches : la Purification de Marie
      (2 février), la Nativité de saint Jean-Baptiste (24 juin), la Visitation
      de Marie (2 juillet) et la Saint-Michel (29 septembre) sont commémorées à
      date fixe du calendrier civil plutôt qu'en fonction de Pâques.
    }
    \vspace #0.9
    \fill-line { \null \bold "Les occasions particulières" \null }
    \justify {
      enfin, quelques chorals furent composés pour des circonstances hors du
      cycle liturgique proprement dit : un mariage, l'inauguration annuelle du
      conseil municipal de Leipzig ou des funérailles.
    }
    \vspace #1.2
    \justify {
      Une dernière section rassemble les chorals dont l'occasion liturgique
      précise n'a pu être établie : il s'agit principalement des pièces isolées
      (BWV 250 et suivants) dont la cantate d'origine ne nous est pas parvenue,
      rendant leur situation dans le calendrier impossible à déterminer avec
      certitude.
    }
  }
  \pageBreak

  \markuplist \table-of-contents
  \pageBreak
}

#(ly:parser-include-string big-content)
