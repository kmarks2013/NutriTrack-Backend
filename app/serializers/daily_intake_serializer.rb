class DailyIntakeSerializer < ActiveModel::Serializer
  attributes :id

  belongs_to :user
  belongs_to :food
  belongs_to :meal_type
end
