class User < ApplicationRecord
    has_many :favorites
    has_many :favorited_restaurants, through: :favorites, source: :restaurant
    
    has_many :comments
    has_many :commented_restaurants, through: :comments, source: :restaurant
end
