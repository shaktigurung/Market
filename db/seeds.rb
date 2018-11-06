# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password') if Rails.env.development?


10.times do
  product = Product.create(user_id: 1, name: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(3), category: "Pants", quantity: 4, price: 50, condition: "Used")
  product.save
  product = Product.create(user_id: 2, name: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(3), category: "Underwear", quantity: 4, price: 50, condition: "Used")
  product.save
  product = Product.create(user_id: 2, name: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(3), category: "Jumper", quantity: 4, price: 50, condition: "Used")
  product.save
  product = Product.create(user_id: 1, name: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(3), category: "Collectable", quantity: 4, price: 50, condition: "Used")
  product.save
  product = Product.create(user_id: 1, name: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(3), category: "Gadget", quantity: 4, price: 50, condition: "Used")
  product.save
  product = Product.create(user_id: 2, name: Faker::Lorem.sentence(1), description: Faker::Lorem.sentence(3), category: "Shirt", quantity: 4, price: 50, condition: "Used")
end
puts "seeding done"