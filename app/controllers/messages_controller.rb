class MessagesController < ApplicationController
    def index
        messages = Message.all
        render json: messages
    end

    def create
        message = Message.new(message_params)
        if message.save
            render json: message
        else
            render json: {errors: message.errros.full_messages}
        end
    end

    private

    def message_params
        params.require(:message).permit(:user_id, :content, :chatroom_id)
    end
end
