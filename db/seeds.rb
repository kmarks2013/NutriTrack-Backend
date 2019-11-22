# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.destroy_all
User.destroy_all

derya = User.create(name:'Derya', username: "deryatanriverdi", age: 31, gender: "Female", height: 5.3, weigth: 120, goal_calorie: 1200, password: 'derya', image:"")
damla = User.create(name:'Damla', username: "damlatanriverdi", age: 29, gender: "Female", height: 5.3, weigth: 120, goal_calorie: 1200, password: '123', image:"")


foods = Food.create([
    {name: 'Almond', calorie: 579, fat: 50, carbs: 22, sugar: 4, protein: 21, serving_size: 100},
    {name: 'Avocado', calorie: 120, fat: 10, carbs: 7.8, sugar: 2.4, protein: 2.2, serving_size: 100},
    {name: 'Apple', calorie: 52, fat: 0.2, carbs: 14, sugar: 10, protein: 0.3, serving_size: 100},
    {name: 'Banana', calorie: 89, fat: 0.3, carbs: 23, sugar: 12, protein: 1.1, serving_size: 100},
    {name: 'Pineapple', calorie: 50, fat: 0.1, carbs: 13, sugar: 9.9, protein: 0.5, serving_size: 100},
    {name: 'Orange', calorie: 45, fat: 0.2, carbs: 10, sugar: 8.4, protein: 0.7, serving_size: 100}, 
    {name: 'Cucumber', calorie: 15, fat: 0.1, carbs: 3.6, sugar: 1.7, protein: 0.7, serving_size: 100},
    {name: 'Tomato', calorie: 23, fat: 0.2, carbs: 5.1, sugar: 4, protein: 1.2, serving_size: 100},
    {name: 'Spinach', calorie: 23, fat: 0.4, carbs: 3.6, sugar: 0.4, protein: 2.9, serving_size: 100},
    {name: 'Bagel, Wheat', calorie: 250, fat: 1.5, carbs: 49, sugar: 6.1, protein: 10, serving_size: 100},
    {name: 'Bagel, Multigrain', calorie: 241, fat: 1.2, carbs: 47, sugar: 8.7, protein: 9.9, serving_size: 100},
    {name: 'Bread, Rye', calorie: 259 , fat: 3.3 , carbs: 48 , sugar: 3.9 , protein: 8.5 , serving_size: 100},
    {name: 'Bread, Wheat', calorie: 267 , fat: 3.2 , carbs: 49 , sugar: 5.9 , protein: 11 , serving_size: 100},
    {name: 'Bread, Cinnamon', calorie: 253, fat: 5.3, carbs: 44, sugar: 14, protein: 7.1, serving_size: 100},
    {name: 'Egg', calorie: 196 , fat: 15, carbs: 0.8, sugar: 0.4, protein: 14, serving_size: 100},
    {name: '70-85% Chocolate', calorie: 598, fat: 43, carbs: 46, sugar: 24, protein: 7.8, serving_size: 100},
    {name: 'Potatoes, with salt, skin, cooked in skin, boiled', calorie: 78, fat: 0.1, carbs: 17, sugar: 3.3, protein: 2.9, serving_size: 100},
    {name: 'Sweet potato, without skin, boiled, cooked', calorie: 76, fat: 0.1, carbs: 18, sugar: 5.7, protein: 1.4, serving_size: 100}
])

puts "Seeded 🍇"