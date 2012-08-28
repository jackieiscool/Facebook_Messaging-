class MessagesController < ApplicationController

  def index
  end

  def new
    @message = Message.new
  end

  def create
    @conversation = Conversation.find(params[:conversation_id])
    @message = @conversation.messages.build(params[:message])
    # @message.user_id = current_user.id
    @message.save
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
