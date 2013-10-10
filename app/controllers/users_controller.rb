class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      auto_login(@user)
      redirect_to root_url, :notice => "Account Created.  Welcome #{@user.first_name}."
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:deal).permit(:first_name, :last_name, :email)
  end
end
