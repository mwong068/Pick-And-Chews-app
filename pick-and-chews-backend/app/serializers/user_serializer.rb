class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :name, :bio
end
