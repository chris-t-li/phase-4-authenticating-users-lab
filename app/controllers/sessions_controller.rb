class SessionsController < ApplicationController

    # POST /login
    def create
        # byebug
        user = User.find_by(username: params[:username])
        if user
            session[:user_id] ||= user.id
            render json: user
        end
    end

    # DELETE /logout
    def destroy
        session[:user_id] = nil
        head :no_content
    end
end
