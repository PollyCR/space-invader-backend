class UsersController < ApplicationController
    def index
        users = User.all
        render json: users
    end

    def create
        # byebug
        user = User.create(user_params)
        if user.valid?
            # byebug
            render json: { token: issue_token({user_id: user.id}), user: UserSerializer.new(user) }
        else
            render json: { errors: user.errors.full_messages }, status: :not_acceptable
        end
    end

    private

    def user_params
        params.require(:user).permit(:username, :password, :password_confirmation)
    end

end
