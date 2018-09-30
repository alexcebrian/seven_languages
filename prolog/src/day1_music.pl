artist(hendrix, guitar).
artist(santana, guitar).
artist(chopin, piano).
artist(billy_joel, piano).
artist(elton_jhon, piano).
aritst(ringo, drums).
artist(dave_grohl, drums).
artist(lars_ulrich, drums).

artist_genre(hendrix, rock).
artist_genre(santana, rock).
artist_genre(chopin, classical).
artist_genre(billy_joel, soft_rock).
artist_genre(elton_jhon, soft_rock).
artist_genre(ringo, rock).
artist_genre(dave_grohl, alt_rock).
artist_genre(lars_ulrich, heavy_metal).

artist_def(Who, What, Genre) :- artist(Who, What), artist_genre(Who, Genre).

/**
 * All artists who play the guitar:
 * artist_def(Who, guitar, Genre).
 */