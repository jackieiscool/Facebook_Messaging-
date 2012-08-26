class MessagesController < ApplicationController

  def index
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])
    if @message.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
