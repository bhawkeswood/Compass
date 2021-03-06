class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      ModelMailer.user_sign_up_notification(@user).deliver
      auto_login(@user)
      redirect_to deals_path, :notice => "Account Created.  Welcome #{@user.first_name}."
    else
      render :new
    end
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
