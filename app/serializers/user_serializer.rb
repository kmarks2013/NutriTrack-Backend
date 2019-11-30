class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :gender, :image, :height, :weight, :age, :goal_calorie, :total_calories, :total_servings, :total_fat, :total_carbs, :total_protein, :total_sugar

  has_many :daily_intakes
  has_many :foods 
end
