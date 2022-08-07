class Chef < ApplicationRecord
    validates :chefname , presence: true, length: {maximum:30}
    validates :email , presence: true, length: {maximum:255}

    has_many :recipes
    has_secure_password
end