class AuthController < ApplicationController

    def create
        # byebug
        user = User.find_by(username: user_login_params[:username])
        
        if user && user.authenticate(user_login_params[:password])
            
            render json: { user: UserSerializer.new(user), token: issue_token(user_id: user.id) }, status: :accepted
        else
            render json: { message: 'Invalid email or password' }, status: :unauthorized
        end
    end

    def validate
        if @current_user
            render json: { token: issue_token({user_id: @current_user.id}), user: UserSerializer.new(@current_user)}
        else
            render json: { errors: ["user not found"] }, status: :not_found
        end
    end

    private

    def user_login_params
        params.require(:user).permit(:username, :password)
    end
end