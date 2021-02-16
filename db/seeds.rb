# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "cleaning up db"
Restaurant.destroy_all
puts "db is clean"

puts "creating restaurants"
25.times do
  restaurant =  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: Restaurant::CATEGORIES.sample,
    phone_number: Faker::Company.duns_number
  )
  puts "Restaurant #{restaurant.id} was created!"
end
puts "All done here buddy!"

