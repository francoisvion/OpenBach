% Mise en page des chorals OpenBach (4 portées S A T B, texte sous chaque voix).
% Copie du modèle « G. Henle Verlag Urtext/quatuor vocal.ly » (Documents/Partitions/Lilypond/_templates),
% pied de page par défaut conservé pour le copyright. Inclus par chaque *_layout.ly.

% Quatuor vocal (S A T B), 4 portées avec texte sous chaque voix — aspect G. Henle Verlag Urtext
% À inclure au niveau global du fichier (\include), avant le \score.
% Noms de voix attendus dans le \score : instrumentName = "S" ("A", "T", "B") sur chaque portée.

% Taille de portée : HORS du bloc \paper (LilyPond 2.27 l'ignore à l'intérieur).
% 17 ≈ 6 mm de portée : lisible par des choristes tout en gardant 2 systèmes de 4 portées par page.
#(set-global-staff-size 17)

\paper {
  #(set-paper-size "a4")

  left-margin = 20\mm
  right-margin = 20\mm
  top-margin = 18\mm
  bottom-margin = 22\mm

  indent = 6\mm         % « S », « A », « T », « B » sur tous les systèmes
  short-indent = 6\mm

  % Folio en haut, côté extérieur (pas sur la 1re page)
  print-first-page-number = ##f
  oddHeaderMarkup = \markup \fill-line { \null \if \should-print-page-number \fromproperty #'page:page-number-string }
  evenHeaderMarkup = \markup \fill-line { \if \should-print-page-number \fromproperty #'page:page-number-string \null }
  % Pied de page par défaut de LilyPond : copyright (« © … OpenBach ») sur la 1re page seulement

  % Systèmes nettement séparés : le texte de la basse ne doit pas toucher le soprano suivant
  system-system-spacing = #'((basic-distance . 18)
                             (minimum-distance . 13)
                             (padding . 4)
                             (stretchability . 60))
  markup-system-spacing = #'((basic-distance . 12)
                             (minimum-distance . 8)
                             (padding . 2)
                             (stretchability . 20))
  score-markup-spacing = #'((basic-distance . 12)
                            (padding . 2)
                            (stretchability . 30))

  ragged-bottom = ##f
  ragged-last-bottom = ##t
}

\layout {
  \context {
    \Score
    % Numéro de mesure au début de chaque système seulement, petit, comme chez Henle
    \override BarNumber.font-size = #-2
    \override BarNumber.padding = #1.5
  }
  \context {
    \Staff
    % Place pour la ligne de texte entre deux portées
    \override VerticalAxisGroup.staff-staff-spacing =
      #'((basic-distance . 11) (minimum-distance . 8) (padding . 1.5) (stretchability . 5))
    \override InstrumentName.font-size = #-0.5
  }
  \context {
    \Lyrics
    \override LyricText.font-size = #0   % texte à taille normale : lu par des choristes
    \override LyricHyphen.minimum-distance = #0.8
    \override LyricHyphen.length = #0.6
    \override LyricHyphen.thickness = #1.2
    \override LyricExtender.minimum-length = #0
    \override StanzaNumber.font-series = #'bold
    \override VerticalAxisGroup.nonstaff-relatedstaff-spacing.padding = #1
    \override VerticalAxisGroup.nonstaff-unrelatedstaff-spacing.padding = #1.5
  }
  \context {
    \ChoirStaff
    % Accolade carrée des chœurs ; barres de mesure interrompues entre les portées (usage vocal)
    \override SystemStartBracket.padding = #0.6
  }
}
