class ChatroomsController < ApplicationController

    def index
        chatrooms = Chatroom.all
        render json: chatrooms
    end

    def create
        chatroom = Chatroom.new(chatroom_params)
        if chatroom.save
          serialized_data = ActiveModelSerializers::Adapter::Json.new(
            ChatroomSerializer.new(chatroom)
          ).serializable_hash
          ActionCable.server.broadcast 'chatrooms_channel', serialized_data
          head :ok
        end
      end
      
      private
      
      def chatroom_params
        params.require(:chatroom).permit(:name, :description)
      end

end
