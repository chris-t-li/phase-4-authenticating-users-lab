class UsersController < ApplicationController

    # GET /me
    def show
        user = User.find(session[:user_id])
        render json: user, status: :ok
    end
end
