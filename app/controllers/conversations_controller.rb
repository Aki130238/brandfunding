class ConversationsController < ApplicationController
  def index
      @conversations = Conversation.all
  end
  def create
    if logged_in?
      if Conversation.between(params[:sender_id], params[:recipient_id]).present?
        @conversation = Conversation.between(params[:sender_id], params[:recipient_id]).first
      else
        @conversation = Conversation.create!(conversation_params)
      end
      redirect_to conversation_messages_path(@conversation)
    else
      redirect_to root_path
    end
  end

  private

  def conversation_params
      params.permit(:sender_id, :recipient_id)
  end
end
