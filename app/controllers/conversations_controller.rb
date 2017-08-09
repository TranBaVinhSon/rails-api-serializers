class ConversationsController < ApplicationController
  def index
    conversations = Conversation.for_user User.first
    render json: conversations
  end
end
