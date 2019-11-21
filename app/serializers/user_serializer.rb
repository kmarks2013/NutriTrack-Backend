class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :gender, :image, :height, :weigth, :age, :goal_calorie

  has_many :daily_intakes
  has_many :foods 
  has_many :meal_types
end
