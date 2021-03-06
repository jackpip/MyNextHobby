class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    message = Message.new(message_params)
    message.user = current_user
    if message.save
      ActionCable.server.broadcast 'messages',
        message: message.body,
        user: message.user.email
      head :ok
    else
      redirect_to hobbies_path
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :hobby_id)
  end

end
