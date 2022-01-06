class UsersController < ApplicationController

  def welcome
  end

  def new
    @user = User.new
  end

  def create
    binding.pry
    @user = User.new(user_params)
    
    if @user.save
      session[:user_id] = @user.id
      flash[:notice] = "Sign up successful"
      redirect_to @user
    else
      flash[:notice] = "Please try again"
      redirect_to '/signup'
    end
  end

  def index
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end

