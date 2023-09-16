# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
# 10.times do
#   User.create(
#     name: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: "password"
#   )
# end

require 'faker'

User.create(
  name: "John Doe",
  email: "2@ffs.d",
  password: "password"
)

Inventory.create(
  name: "My Inventory",
  user_id: 1
)

Recipe.create(
  name: "My Recipe",
  preparation_time: "1 hour",
  cooking_time: "1 hour",
  public: true,
  description: "My Description",
  user_id: 1
)

Food.create(
  name: "My Food",
  measurement_unit: "kg",
  price: 1.99
)

InventoryFood.create(
  quantity: '2',
  inventory_id: 1,
  food_id: 1
)

RecipeFood.create(
  quantity: '3',
  recipe_id: 1,
  food_id: 1
)

20.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password"
  )
end

prng = Random.new

30.times do
  Inventory.create(
    name: Faker::Name.name,
    user_id: prng.rand(1..20)
  )
end

30.times do
  Recipe.create(
    name: Faker::Name.name,
    preparation_time: "#{Faker::Number.number(digits: 2)} hours",
    cooking_time: "#{Faker::Number.number(digits: 2)} hours",
    public: Faker::Boolean.boolean,
    description: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false),
    user_id: prng.rand(1..20)
  )
end

30.times do
  Food.create(
    name: Faker::Name.name,
    measurement_unit: "kg",
    price: Faker::Number.decimal(l_digits: 2)
  )
end

30.times do
  InventoryFood.create(
    quantity: Faker::Number.number(digits: 2),
    inventory_id: prng.rand(1..30),
    food_id: prng.rand(1..30)
  )
end

30.times do
  RecipeFood.create(
    quantity: Faker::Number.number(digits: 2),
    recipe_id: prng.rand(1..30),
    food_id: prng.rand(1..30)
  )
end

puts "Data Seeded."
