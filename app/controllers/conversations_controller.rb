class ConversationsController < ApplicationController

include Kernel

  def index
    @conversations = Conversation.all
  end

  def new
    @conversation = Conversation.new
    @message = @conversation.messages.build
    @user_conversation = @conversation.user_conversations.build
  end

  def create
    @conversation = Conversation.new(params[:conversation])
    @message = Message.create(params[:messages])
    @user_conversation = User_Conversation.create(params[:user_conversations])
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
