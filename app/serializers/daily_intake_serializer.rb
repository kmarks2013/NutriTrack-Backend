class DailyIntakeSerializer < ActiveModel::Serializer
  attributes :id, :user, :food, :meal_type


  belongs_to :user
  belongs_to :food

end
