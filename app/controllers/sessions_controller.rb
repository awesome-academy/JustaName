class SessionsController < ApplicationController

  before_action :require_none, only: [:new]

  def new
  end

  def destroy
    User.find(session[:user_id]).destroy      
    session[:user_id] = nil         
    redirect_to '/users/sign_in' 
  end  
  

end