class FavoriteSerializer
  include FastJsonapi::ObjectSerializer
  attributes :recommendations, :likes
  belongs_to :user
  belongs_to :restaurant
end
