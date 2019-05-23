require("pry")
require_relative("models/movie")
require_relative("models/star")
require_relative("models/casting")

Movie.delete_all()
Star.delete_all()
Casting.delete_all()

movie1 = Movie.new({
    'title' => 'The Godfather Part 2',
    'genre' => 'Crime'
    })
movie1.save()


movie2 = Movie.new({
        'title' => 'Midnight Run',
        'genre' => 'Comedy'
        })
movie2.save()

movie3 = Movie.new({
        'title' => 'The Insider',
        'genre' => 'Thriller'
        })
movie3.save()


star1 = Star.new({
  'first_name' => 'Robert',
  'last_name' => 'De Nero'
})
star1.save()


star2 = Star.new({
    'first_name' => 'Al',
    'last_name' => 'Pacino'
  })
star2.save()


casting1 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star1.id,
  'fee' => 3000000
  })
casting1.save()

casting2 = Casting.new({
  'movie_id' => movie2.id,
  'star_id' => star1.id,
  'fee' => 2000000
  })
casting2.save()

casting3 = Casting.new({
  'movie_id' => movie1.id,
  'star_id' => star2.id,
  'fee' => 3000000
  })
casting3.save()

casting4 = Casting.new({
  'movie_id' => movie3.id,
  'star_id' => star2.id,
  'fee' => 3000000
  })
casting4.save()

binding.pry
nil
