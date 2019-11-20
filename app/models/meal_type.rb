class MealType < ApplicationRecord
    has_many :daily_intakes
    has_many :users, through: :daily_intakes
    has_many :foods, through: :daily_intakes
end
