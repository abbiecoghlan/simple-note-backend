class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :avatar, :id
  has_many :notes
end
