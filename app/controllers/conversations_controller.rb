class ConversationsController < ApplicationController

include Kernel

  def index
    @conversations = Conversation.all
  end

  def new
    @conversation = Conversation.new
    @message = @conversation.messages.build
  end

  def create
    @conversation = Conversation.new(params[:conversation])
    @message = Message.create(params[:messages])
    audit(current_user)
    @message.user_id = current_user.id
    @message.save
    if @conversation.save
      redirect_to root_url
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
