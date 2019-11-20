class Food < ApplicationRecord
    has_many :daily_intakes
    has_many :users, through: :daily_intakes
    has_many :meal_types, through: :daily_intakes
end
