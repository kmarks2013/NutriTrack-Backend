class FoodSerializer < ActiveModel::Serializer
  attributes :id, :name, :calorie, :protein, :carbs, :sugar, :serving_size, :fat

  has_many :daily_intakes
  has_many :users

  
end
