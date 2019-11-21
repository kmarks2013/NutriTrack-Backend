class MealTypeSerializer < ActiveModel::Serializer
  attributes :id, :type 

  has_many :users
  has_many :daily_intakes
  has_many :foods
end
