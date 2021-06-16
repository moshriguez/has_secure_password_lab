class SessionsController < ApplicationController
    def new

    end

    def create
        @user = User.find_by(name: params[:user][:name])
        return redirect_to login_path unless @user.try(:authenticate, params[:user][:password])
        session[:user_id] = @user.id
    end

    def destroy

    end
end