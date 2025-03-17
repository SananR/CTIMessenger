class MessagesController < ApplicationController

  before_action :require_user

  def create
    message = current_user.messages.build(message_params)
    if message.save
    end
  end

  private

  def message_params
    params.require(:message).permit(:body, :id)
  end

  def message_render(message)
    render_to_string(partial: 'message', locals: { message: message })
  end

end