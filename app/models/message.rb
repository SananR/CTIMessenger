class Message < ApplicationRecord
    belongs_to :user
    validates :body, presence: true

    after_commit :broadcast_message, on: :create

    def to_gid_param
        id.to_s
    end

    private

    def broadcast_message
        # Reload the record so that all index metadata is fresh
        reloaded_message = Message.find(id)
        
        rendered_message = ApplicationController.render(
            partial: 'messages/message',  # ensure this path matches your partial location
            locals: { message: reloaded_message }
        )
        
        ActionCable.server.broadcast "chatroom_channel", { message: rendered_message }
    end
end
