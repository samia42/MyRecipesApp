class Chef < ApplicationRecord
    validates :chefname , presence: true, length: {maximum:30}
    validates :email , presence: true, length: {maximum:255}
    has_many :recipes, dependent: :destroy
    has_secure_password validations: false
    validates_presence_of :password, on: :create
    default_scope -> { order(updated_at: :desc)}
    has_many :comments, dependent: :destroy
end