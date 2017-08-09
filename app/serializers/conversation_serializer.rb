class ConversationSerializer < ActiveModel::Serializer
  has_many :messages, class_name: "Message"
  belongs_to :participant, class_name: "User"
end
