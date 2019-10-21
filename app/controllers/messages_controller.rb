class MessagesController < ApplicationController

    def create
        message = Message.new(message_params)
        chatroom = Chatroom.find(message_params[:chatroom_id])
        if message.save
            serialized_data = ActiveModelSerializers::Adapter::Json.new(
                MessageSerializer.new(message)
            ).serializable_hash
            MessagesChannel.broadcast_to chatroom, serialized_data
            head :ok
        end
    end

    private

    def message_params
        params.require(:message).permit(:user_id, :content, :chatroom_id)
    end
end
