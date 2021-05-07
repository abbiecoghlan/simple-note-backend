class UserSerializer < ActiveModel::Serializer
  attributes :username, :bio, :avatar, :id, :email
  has_many :notes
end
