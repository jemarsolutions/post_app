class UsersController < ApplicationController
    before_action :authenticate_user!
    def dashboard
        @users = User.all
        @user = @users.find(params[:id])
    end
end
