class UserSerializer < ActiveModel::Serializer
  has_many :messages, class_name: "Message"
  belongs_to :user, class_name: "User"
  attributes :username
end
