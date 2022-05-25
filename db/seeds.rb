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

meghan = User.new(name: "Meghan", email: "meghan.h.johnson@gmail.com", password: "Password1!", location: "Albania", age: "18")
meghan.save!

alex = Friend.new(name: "Alex Rojon", description: "Nice friend!", location: "Albania", price:"100USD")
alex.user = meghan
alex.save!

puts "Data Base Created!"
