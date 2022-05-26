# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroying Data Base"
if Rails.env.development?
  User.destroy_all
end

puts "Creating Data Base"

meghan = User.new(name: "Meghan", email: "meghan.h.johnson@gmail.com", password: "Hello1!", location: "Albania", age: "18")
meghan.save!

alex = User.new(name: "Ted", email: "ted@gmail.com", password: "Hello1!", location: "Belgium", age: "18")
alex.save!

puts "Data Base Created!"
