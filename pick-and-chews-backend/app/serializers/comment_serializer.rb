class CommentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :input
  belongs_to :user
  belongs_to :restaurant
end
