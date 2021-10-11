class UsersController < ApplicationController
    before_action :set_user, only: [:show]
    after_action :authorized, only: [:create]
    def new
        @user = User.new

    end

    def create
       
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
           
            redirect_to @user 
        
        else 
            render '/'
        end
    end

    def show
        
    
     authorized
   

    end

    private

    def set_user
        @user = User.find_by_id(params[:id])

    end

    def user_params
        params.require(:user).permit(:name, :height, :nausea, :happiness, :tickets, :password, :password_confirmation, :admin)
    end
end
