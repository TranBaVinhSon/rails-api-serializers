class MessageSerializer < ActiveModel::Serializer
  attributes :body, :sender, :recipient

  def sender
    UserSerializer.new(object.sender).attributes
  end

  def recipient
    UserSerializer.new(object.recipient).attributes
  end
end
