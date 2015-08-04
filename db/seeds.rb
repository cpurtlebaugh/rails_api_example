  Movie.destroy_all
  Actor.destroy_all

  # Actors
  ralph_fiennes = Actor.create(
    name: 'Ralph Fiennes',
    year_of_birth: 1962
  )
  jeff_goldblum = Actor.create(
    name: 'Jeff Goldblum',
    year_of_birth: 1952
  )
  will_ferrel = Actor.create(
    name: 'Will Ferrell',
    year_of_birth: 1967
  )
  chris_kattan = Actor.create(
    name: 'Chris Kattan',
    year_of_birth: 1970
  )
  zach_braff = Actor.create(
    name: 'Zach Braff',
    year_of_birth: 1975
  )
  kate_hudson = Actor.create(
    name: 'Kate Hudson',
    year_of_birth: 1979
  )

  # Movies
  the_grand_budapest_hotel = Movie.create(
    title: 'The Grand Budapest Hotel',
    summary: 'The adventures of Gustave H, a legendary concierge at a famous hotel from the fictional Republic of Zubrowka between the first and second World Wars, and Zero Moustafa, the lobby boy who becomes his most trusted friend.',
    actors: [ralph_fiennes, jeff_goldblum]
  )
  wish_i_was_here = Movie.create(
    title: 'Wish I was Here',
    summary: 'Aidan Bloom is a 35-year-old man who finds himself at major crossroads, which forces him to examine his life, his career, and his family.',
    actors: [zach_braff, kate_hudson]
  )
  a_night_at_the_roxbury = Movie.create(
    title: 'A Night at the Roxbury',
    summary: 'Two dim-witted brothers dream of owning their own dance club or at least getting into the coolest and most exclusive club in town, The Roxbury.',
    actors: [will_ferrel, chris_kattan]
  )

  puts 'Successfully added seed data'