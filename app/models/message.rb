class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true

    after_commit :broadcast_message, on: :create

    private

    def broadcast_message
        ActionCable.server.broadcast "chatroom_channel", {
          message: ApplicationController.render(
            partial: 'messages/message',
            locals: { message: self }
          )
        }
    end
end
