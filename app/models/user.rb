class User < ApplicationRecord
    has_many :daily_intakes
    has_many :foods, through: :daily_intakes
    has_many :meal_types, through: :daily_intakes

     
    has_secure_password
end
