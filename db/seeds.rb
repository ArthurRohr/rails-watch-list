# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require 'faker'
require 'open-uri'

Movie.destroy_all

puts "Generating movies..."

20.times do
  title = Faker::Movie.title
  overview = Faker::Movie.quote
  random_image_number = rand(1..2000)
  poster_url = "https://source.unsplash.com/featured/?fantasy&#{random_image_number}"
  rating = rand(1.0..10.0).round(1)

  Movie.create(
    title: title,
    overview: overview,
    poster_url: poster_url,
    rating: rating
  )
end

puts "20 Movie added"
