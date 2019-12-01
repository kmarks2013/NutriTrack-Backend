class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :gender, :image, :height, :weight, :age, :goal_calorie, :goal_carbs, :goal_fat, :goal_protein, :goal_sugar, :total_calories, :total_servings, :total_fat, :total_carbs, :total_protein, :total_sugar, :remaining_calories, :remaining_fat, :remaining_carbs, :remaining_sugar, :remaining_protein


 

  has_many :daily_intakes
  has_many :foods 
end
