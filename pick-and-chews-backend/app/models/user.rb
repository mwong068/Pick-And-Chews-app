class User < ApplicationRecord
    has_many :favorites
    has_many :restaurants, through: :favorites
    
    has_many :comments
    has_many :commented_restaurants, through: :comments, source: :restaurant
end
