class DailyIntake < ApplicationRecord
    belongs_to :user
    belongs_to :food
    belongs_to :meal_type
end
