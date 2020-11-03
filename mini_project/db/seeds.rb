# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 30.times do
#   Ingredient.create(name: Faker::Food.unique.ingredient)
# end

# meal_types = ["Breakfast", "Lunch", "Dinner", "Appetizers", "Sweets"]

# user = []

# 10.times do
#   user << User.create(name: Faker::FunnyName.name)
# end

# User.all.each do |u|
#   10.times do
#     u.recipes.create(user: u, name: Faker::Food.dish, meal_type: meal_types.sample)
#   end
# end

Recipe.all.each do |r|
  3.times do
    r.recipe_ingredients.create(ingredient: Ingredient.all.sample, measurements: rand(1..9))
  end
end
