# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts 'Start creating restaurants'
Restaurant.destroy_all
restaurants = Restaurant.create([
  {
    name: 'Tenkane',
    address: 'Nishi-Shinujuku',
    phone_number:'03-1234-1234',
    category: 'japanese'
  },
  {
    name: 'Tenhide',
    address: 'Nishi-Shinujuku',
    phone_number:'03-5678-5678',
    category: 'japanese'
  },
  {
    name: 'Brussels',
    address: 'Kamiyacho',
    phone_number:'03-5555-6666',
    category: 'belgian'
  },
  {
    name: 'Napoli',
    address: 'Komone',
    phone_number:'03-1234-1234',
    category: 'italian'
  },
  {
    name: 'Sea Dragon',
    address: 'Nakameguro',
    phone_number:'03-1234-1234',
    category: 'chinese'
  }
])
puts 'Finished creating restaurants'
