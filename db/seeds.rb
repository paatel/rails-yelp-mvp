# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

CAT = ["chinese", "italian", "japanese", "french", "belgian"]

Restaurant.destroy_all
Review.destroy_all

5.times do |_|
  restaurant = Restaurant.create(
      name: "#{Faker::Seinfeld.character}'s Place",
      address: "#{Faker::Address.street_address}, #{Faker::Address.city}",
      phone_number: Faker::PhoneNumber.phone_number,
      category: CAT.sample
  )
  rand(1..10).times do |_t|
    restaurant.reviews.create(
      content: Faker::Seinfeld.quote,
      rating: (0..5).to_a.sample
    )
  end
end
