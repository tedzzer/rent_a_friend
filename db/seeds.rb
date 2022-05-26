# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Data Base"
if Rails.env.development?
  Friend.destroy_all
  User.destroy_all
end

puts "Creating Data Base"

meghan = User.new(name: "Meghan", email: "meghan.h.johnson@gmail.com", password: "Hello1!", location: "Albania", age: "18")
meghan.save!

alex = Friend.new(name: "Alex", age: 23, description: "Tattoos, motorcycles, and couscous are my thing!", location: "United States", price: "100USD")
alex.user = meghan
alex.save!

carine = Friend.new(name: "Carine", age: 34, description: "Olympic swimmer turned web developer", location: "Belgium", price: "Pool fee")
carine.user = meghan
carine.save!

drake = Friend.new(name: "Drake", age: 29, description: "No new friends!", location: "Canada", price: "Red puffer coat")
drake.user = meghan
drake.save!

puts "Data Base Created!"
