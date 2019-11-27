class User < ApplicationRecord
    has_many :daily_intakes
    has_many :foods, through: :daily_intakes

    has_secure_password

    validates :username, uniqueness: true
end
