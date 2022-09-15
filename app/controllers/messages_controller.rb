class MessagesController < ApplicationController

  def create
    @message = current_user.messages.create(boby: msg_params[:boby], room_id: params[:room_id])

  end

  private

  def msg_params
    params.require(:message).permit(:body)
  end
end
