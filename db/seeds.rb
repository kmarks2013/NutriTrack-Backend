# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Food.destroy_all
User.destroy_all

derya = User.create(name:'Derya', username: "deryatanriverdi", age: 31, gender: "Female", height: 5.3, weigth: 120, goal_calorie: 1200, password_digest: '123', image:"")
damla = User.create(name:'Damla', username: "damlatanriverdi", age: 29, gender: "Female", height: 5.3, weigth: 120, goal_calorie: 1200, password_digest: '123', image:"")


foods = Food.create([
    {name: 'Almond', calorie: 579, fat: 50, carbs: 22, sugar: 4, protein: 21, serving_size: 100},
    {name: 'Avocado', calorie: 120, fat: 10, carbs: 7.8, sugar: 2.4, protein: 2.2, serving_size: 100},
    {name: 'Apple', calorie: 52, fat: 0.2, carbs: 14, sugar: 10, protein: 0.3, serving_size: 100},
    {name: 'Banana', calorie: 89, fat: 0.3, carbs: 23, sugar: 12, protein: 1.1, serving_size: 100},
])