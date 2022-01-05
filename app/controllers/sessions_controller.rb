class SessionsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    #binding.pry
    user = User.find_by(email: params[:session][:email])

    if user && user.authenticate(params[:session][:password])
      binding.pry
      session[:user_id] = user.id
      flash[:notice]= "Login sucessful"
      redirect_to user
    else
      flash[:notice]= "Invalid email or password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice]="Logged Out"
    redirect_to '/login'
  end
end
