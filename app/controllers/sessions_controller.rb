class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by(params[:id])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice]="Login sucessful"
      redirect_to '/welcome'
    else
      flash[:notice]="Invalid email or password"
      redirect_to '/login'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice]="Logged Out"
    redirect_to '/login'
  end
end
