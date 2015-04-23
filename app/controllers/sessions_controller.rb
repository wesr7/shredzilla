class SessionsController < ApplicationController
     def create
        @user = User.from_omniauth(request.env['omniauth.auth'])
        session[:user_id] = @user.id
        redirect_to user_workouts_path(@user.id)
    end

    def destroy
        session[:user_id] = nil
        redirect_to root_url
    end
end
