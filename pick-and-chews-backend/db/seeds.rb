# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'
# require 'pry'

10.times do
    User.create(username: Faker::Movies::StarWars.droid, name: Faker::Name.name, bio: Faker::Games::Overwatch.quote)

    Restaurant.create(name: Faker::Restaurant.name)
end

10.times do
    newUser = User.all.sample
    newRest = Restaurant.all.sample

    Favorite.create(recommendations: Faker::Restaurant.review, likes: rand(10), user_id: newUser.id, restaurant_id: newRest.id)

    newUserTwo = User.all.sample
    newRestTwo = Restaurant.all.sample

    Comment.create(input: Faker::TvShows::MichaelScott.quote, user_id: newUserTwo.id, restaurant_id: newRestTwo.id)
end