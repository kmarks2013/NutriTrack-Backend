class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :username, :gender, :image, :height, :weight, :age, :goal_calorie

  has_many :daily_intakes
  has_many :foods 
end
