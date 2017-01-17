class UsersController < ApplicationController
    
    before_action :set_user
    before_action :check_user, only: [:edit, :update, :destroy]
    before_action :authenticate_user!
    
    def show
        @user = User.find(params[:id])
    end
    
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(user_params)
    end
    
    def destroy
    end
    
    private
    def user_params
        params.require(:user).permit(:name, :username, :email, :encrypted_password)
    end
    
    def check_user
        if @user != current_user
            redirect_to root_path
        end
    end
    
    def set_user
        @user = User.find(params[:id])
    end
end
