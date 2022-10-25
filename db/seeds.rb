# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

bread = Ingredient.create(name: 'Bread')
peanut_butter = Ingredient.create(name: 'Peanut Butter')
jelly = Ingredient.create(name: 'Jelly')
hummus = Ingredient.create(name: 'Hummus')
tomato = Ingredient.create(name: 'Tomato')
cucumber = Ingredient.create(name: 'Cucumber')
lettuce = Ingredient.create(name: 'Lettuce')


recipe1 = Recipe.create(name: 'Peanut Butter and Jelly Sandwich', page_number: 1)
recipe1.ingredients << [bread, peanut_butter, jelly]

recipe2 = Recipe.create(name: 'Hummus and Veggies Sandwich', page_number: 2)
recipe2.ingredients << [bread, hummus, tomato, lettuce, cucumber]

recipe3 = Recipe.create(name: 'Salad', page_number: 3)
recipe3.ingredients << [tomato, lettuce, cucumber]

recipe4 = Recipe.create(name: 'Peanut Butter Sandwich', page_number: 4)
recipe4.ingredients << [bread, peanut_butter]