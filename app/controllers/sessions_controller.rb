class SessionsController < ApplicationController
def new
 
    
    
end

def create

    

  @user = User.find_by(id: params[:user_name])
  if @user.nil?
    redirect_to 'users#new'
  else
  
  
  return head(:forbidden) unless @user.authenticate(params[:password])
  session[:user_id] = @user.id
  redirect_to @user
   end
end

def destroy
    session[:user_id] = nil
    redirect_to '/'
  end

private






end