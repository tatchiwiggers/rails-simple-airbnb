class Flat < ApplicationRecord
    has_many :reviews, dependent: :destroy
    validates :name, :description, :address, :number_of_guests, presence: true
    validates :price_per_night, numericality: { only_integer: true }
end
