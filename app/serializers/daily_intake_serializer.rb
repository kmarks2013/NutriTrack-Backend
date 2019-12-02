class DailyIntakeSerializer < ActiveModel::Serializer
  attributes :id, :user, :food, :meal_type, :serving, :total_calories, :total_fat, :total_carbs, :total_protein, :total_sugar, :date


  belongs_to :user
  belongs_to :food

end
