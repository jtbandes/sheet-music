\version "2.22.1"

\header {
  title = \markup {
    \override #'((font-name . "Luminari") (font-size . 6))
    "Into The Unknown"
  }
  subtitle = \markup {
    \override #'((font-series . medium))
    "Over The Garden Wall"
  }
  composer = \markup \override #'(baseline-skip . 2.5) \column {
    "Brandon Armstrong"
    "Joshua Kaufman"
    "Justin Rubenstein"
    "Patrick McHale"
  }
  tagline = ##f
}

global = {
  \key cis \minor \time 3/4
  \set Staff.ottavationMarkups = #ottavation-ordinals
  \set Timing.beamExceptions = #'()
  \set Timing.beatStructure = 1,1,1
}

% https://music.stackexchange.com/a/131273/1069
onceInvisibleNote = {
  \once\override NoteColumn.ignore-collision = ##t
  \once\omit Stem
  \once\omit Flag
}

\parallelMusic rh,middleDynamics,lh,pedal {
  \global |
  |
  \global |
  |
  
  \tempo "Andante"
  gis''4 \grace b8 a8 gis fisis gis |
  s2.\p |
  R2. |
  s2. |

  \once\override Staff.OttavaBracket.shorten-pair = #'(0 . -5)
  \ottava #1 gis'8( cis, e a) gis a |
  s8 s\< s s s\! s |
  gis'4 e'2 |
  s2\sustainOn s4\sustainOff |

  gis4( dis bis |
  s4\> s s\! |
  <gis, bis>2. |
  s2\sustainOn s4\sustainOff |

  cis2.) |
  s2. |
  <cis e gis>2.\arpeggio |
  s2.\sustainOn |

  cis'2. \ottava #0 |
  s2. |
  R2. \clef bass |
  s2 s4\sustainOff |

  \break

  <gis,,, cis e gis>2 gis'4 |
  s2\f s4 |
  cis,,,4 e'2 |
  s2\sustainOn s8 s8\sustainOff |

  <b, dis gis>2 gis'4 |
  s2. |
  b4 gis'2 |
  s2\sustainOn s8 s8\sustainOff |

  <a, cis gis'>4 fis'2 |
  s8 s\> s4 s8 s\! |
  a,2 fis'8 a |
  s2\sustainOn s8 s8\sustainOff |

  fis2. |
  s2.\p |
  fis,2. |
  s2. |

  \break

  <gis, cis e>4\f <gis gis'>4. gis8 |
  s2. |
  gis2 e'4 |
  s2\sustainOn s8 s8\sustainOff |

  <fis dis'>4 <gis e'>4 \tuplet 3/2 { fis8 bis dis } |
  s2. |
  <gis,, gis'>2. |
  s2\sustainOn s8 s8\sustainOff |

  <e, gis cis>2 gis8 cis |
  s2. |
  \shape #'((-1 . -1) (0 . 2) (-2 . 4) (0 . 3)) PhrasingSlur
  cis8\<\( gis' cis <<
    e4.
    {s4
      % https://music.stackexchange.com/a/131273/1069
       \change Staff = "upper"
       \onceInvisibleNote
       cis'8\)
       \change Staff = "lower"
    }
  >> |
  s2\sustainOn s8 s8\sustainOff |

  bis2 bis8 gis' |
  s2. |
  \shape #'((-1 . -1) (0 . 2) (-2 . 3) (0 . 3)) PhrasingSlur
  gis,8\( dis' fis <<
    gis4.
    {s4
      % https://music.stackexchange.com/a/131273/1069
       \change Staff = "upper"
       \onceInvisibleNote
       gis'8\)
       \change Staff = "lower"
    }
  >> <>\! |
  s2\sustainOn s8 s8\sustainOff |

  \break

  <gis, cis e gis>2 gis'4 |
  s2. |
  <cis,,, cis'>4 e'2 |
  s2\sustainOn s8 s8\sustainOff |

  <b, dis gis>4~ <b dis gis>4. gis'8 |
  s2. |
  <b, b'>4 gis''2 |
  s2\sustainOn s8 s8\sustainOff |

  <e g cis>4. bis'8 <e, g cis> <e dis'> |
  s4.\ff s8 s s\> |
  ais,4 cis'2 |
  s2\sustainOn s8 s8\sustainOff |

  <bis dis gis!>2 gis'4 |
  s4 s\! s |
  gis,4 gis'2 |
  s2\sustainOn s8 s8\sustainOff |

  \break

  <a, a'>4 cis e |
  s2.\p |
  a,2. |
  s2\sustainOn s8 s8\sustainOff |

  <gis, gis'>4 cis e |
  s2. |
  gis2. |
  s2\sustainOn s8 s8\sustainOff |

  \once\override Hairpin.X-offset = 2
  \once\override Hairpin.Y-offset = -3
  <g, g'>4\< cis e\! |
  s2. |
  g2. |
  s2\sustainOn s8 s8\sustainOff |

  <gis,! bis dis gis!>2. |
  s2. |
  gis!2. |
  s2. |

  \break

  <a cis fis>2\mp e'8 fis |
  s2. |
  a2. |
  s2\sustainOn s8 s8\sustainOff |

  <gis, cis e>4~ <gis cis e>4. e'8 |
  s2. |
  gis2. |
  s2\sustainOn s8 s8\sustainOff |

  \override TextSpanner.bound-details.left.text = "rit."
  <a, fis'>4(\startTextSpan d <a d fis> |
  s2. |
  fis2. |
  s2\sustainOn s8 s8\sustainOff |

  <<gis'2.) {s2 s16 s\stopTextSpan s8}>> |
  s2. |
  <gis gis'>4 cis'8( ais <fis bis>4)\fermata |
  s2\sustainOn \once\override SustainPedal.X-offset = #3 s4\sustainOff |

  \bar "||" \break
  \set Staff.printKeyCancellation = ##f
  \key des \major \tempo "a tempo"
  <des f aes>4.\mf bes'8( fes f |
  s2. |
  \set Staff.printKeyCancellation = ##f
  \key des \major des,4 f'2 |
  s2\sustainOn s8 s8\sustainOff |

  <d f aes>2.) |
  s2. |
  d,4 f' aes |
  s2\sustainOn s8 s8\sustainOff |

  <bes ees aes>8~ <bes ees ges>4. bes8( ces |
  s2. |
  ees,4 ges'2 |
  s2\sustainOn s8 s8\sustainOff |

  <ges c! f>4.) ges8 ees'4 |
  s2. |
  aes,,4 ees''4. c8 |
  s2\sustainOn s8 s8\sustainOff |

  \break

  <f, aes ees'>8~ <f aes des>4. f8 des' |
  s2. |
  <des, des'>4 aes'8\shape #'((-2 . 3) (-2 . 4) (-2 . 4) (0 . 3))\( <<
    des4.
    {s4
      % https://music.stackexchange.com/a/131273/1069
       \change Staff = "upper"
       \onceInvisibleNote
       des'8\)
       \change Staff = "lower"
    }
  >> |
  s4\sustainOn
  \once\override Hairpin.X-offset = -1.25
  \once\override Hairpin.Y-offset = 3
  s8\< s8 s s\!\sustainOff |

  <ees, a des>8~ <ees a c>4. ees8 c' |
  s2. |
  f,,4 c'8\shape #'((-2 . 3) (-2 . 4) (-2 . 4) (0 . 3))\( <<
    f4.
    {s4
      % https://music.stackexchange.com/a/131273/1069
       \change Staff = "upper"
       \onceInvisibleNote
       c'8\)
       \change Staff = "lower"
    }
  >> |
  s4\sustainOn
  \once\override Hairpin.X-offset = -1.25
  \once\override Hairpin.Y-offset = 3
  s8\< s8 s s\!\sustainOff |

  <des, ges bes>4. des8 ges\> bes\! |
  s2. |
  ges,2. |
  s2\sustainOn s8 s8\sustainOff |

  <d, f bes>4~ <d f bes>4. bes'8 |
  s2. |
  bes2. |
  s2\sustainOn s8 s8\sustainOff |

  \break

  <ges ees' ges>4. ges8 f' ees |
  s2. |
  ees,4 ees'2 |
  s2\sustainOn s8 s8\sustainOff |

  <ges, c ges'>4~ <ges c ges'>4. aes8 |
  s2. |
  aes,4\( ees' c |
  s2\sustainOn s8 s8\sustainOff |

  <aes des ges>8~ <aes des f>4 aes8( e' ges) |
  s2. |
  des,4 f' des |
  s2\sustainOn s8 s8\sustainOff |

  <aes, d f>2 f8 f' |
  s2. |
  bes2.\) |
  s2\sustainOn s8 s8\sustainOff |

  \break

  <g, f'>8~ <g bes>4 g8 bes des! |
  s2. |
  ees,4 ees'2 |
  s2\sustainOn s8 s8\sustainOff |

  <ges,! c ges'!>2\startTextSpan <ges c f>4\stopTextSpan |
  s2. |
  aes,4 ees' aes, |
  s2\sustainOn s8 s8\sustainOff |

  <f aes des>4. f8 aes des |
  s2. |
  \shape #'((-1 . -1) (0 . 2) (-2 . 4) (-1 . 5)) PhrasingSlur
  des,8\( aes' <<
    des2
    {s4.
      % https://music.stackexchange.com/a/131273/1069
       \change Staff = "upper"
       \onceInvisibleNote
       des'8\)
       \change Staff = "lower"
    }
  >> |
  s2.\sustainOn |

  <f des'>2. |
  s2. |
  R2. |
  s2 s8 s8\sustainOff |
  
  \bar "|."
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" \relative c' \rh
    \new Dynamics \middleDynamics
    \new Staff = "lower" \relative c' \lh
    \new Dynamics \pedal
  >>

  \layout {
    indent = 0
  }
  \midi {
    \tempo 4 = 120
  }
}
