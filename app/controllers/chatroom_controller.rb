class ChatroomController < ApplicationController

  before_action :require_user

  def index
    @messages = Message.last(20)
    @message = Message.new
  end
  
end