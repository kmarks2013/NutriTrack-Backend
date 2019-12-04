class DailyIntakeSerializer < ActiveModel::Serializer
  attributes :id, :user, :food, :meal_type, :serving, :total_calories, :total_fat, :total_carbs, :total_protein, :total_sugar, :date, :changed_date, :user_remaining_calories, :user_remaining_carbs, :user_remaining_fat, :user_remaining_protein, :user_remaining_sugar


  belongs_to :user
  belongs_to :food

end
