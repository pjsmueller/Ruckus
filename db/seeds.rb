require 'faker'
3.times do
  User.create(username: Faker::Internet.user_name, f_name: Faker::Name.first_name, l_name: Faker::Name.last_name, password: "pass")
end
# movies = Movie.now_playing
# movies.each do |movie|
#   Movie.create(api_id: movie.id )
# end
100.times do
  Review.create(title: Faker::Hipster.word, body: Faker::Hacker.say_something_smart, user_id: User.all.sample.id, movie_id: Movie.all.sample.id)
end
150.times do
  Comment.create(body: Faker::Hacker.say_something_smart, user_id: User.all.sample.id, review_id: Review.all.sample.id)
end

types = ["Review", "Comment", "Movie"]
300.times do
ids = [Review.all.sample.id, Movie.all.sample.id, Comment.all.sample.id]
  picked_type = types.sample
  if picked_type == "Review"
    Rating.create(user_id: User.all.sample.id, rateable_type: picked_type, rateable_id: ids[0], score: rand(1..5))
  elsif picked_type == "Comment"
    Rating.create(user_id: User.all.sample.id, rateable_type: picked_type, rateable_id: ids[1], score: rand(1..5))
  elsif picked_type == "Movie"
    Rating.create(user_id: User.all.sample.id, rateable_type: picked_type, rateable_id: ids[2], score: rand(1..5))
  end
end
