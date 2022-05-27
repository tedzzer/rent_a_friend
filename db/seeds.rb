# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

puts "Destroying Data Base"
if Rails.env.development?
  User.destroy_all
end

puts "Creating Data Base"

30.times do
  User.create(name: Faker::Name.first_name, age: rand(18..75), location: "Brussels, Belgium",
              email: Faker::Internet.email, personal_description: Faker::Hipster.sentence(word_count: 3),
              password: "Hello1!")
end

puts "Data Base Created!"
