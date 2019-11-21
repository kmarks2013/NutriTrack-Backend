# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


derya = User.create(name:'Derya', username: "deryatanriverdi", age: 31, gender: "Female", height: 5.3, weigth: 120, goal_calorie: 1200, password_digest: '123', image:"")

damla = User.create(name:'Damla', username: "damlatanriverdi", age: 29, gender: "Female", height: 5.3, weigth: 120, goal_calorie: 1200, password_digest: '123', image:"")