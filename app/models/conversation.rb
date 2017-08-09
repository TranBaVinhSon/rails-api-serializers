class Conversation
  alias :read_attribute_for_serialization :send
  attr_reader :participant, :messages

  def initialize attributes
    @participant = attributes[:participant]
    @messages = attributes[:messages]
  end

  def self.for_user user
    user.messages.group_by { |message|
      if message.sender = user
        message.recipient_id
      else
        message.sender_id
      end
    }.map do |user_id, messages|
      Conversation.new({
        participant: User.find(user_id),
        messages: messages
      })
    end
  end
end
