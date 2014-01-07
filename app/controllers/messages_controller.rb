class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(set_params)
    if @message.save
      redirect_to root_path, notice:"Message successfully sent"
    else
      render :new
    end
  end

  private

  def set_params
    params.require(:message).permit(:email,:message)
  end
end
