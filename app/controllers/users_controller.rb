class UsersController < ApplicationController
  skip_before_action :authenticate_user, only: [ :new, :create ]

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      redirect_to dashboards_path, success: "Thanks for signing up"
    else
      render :new
    end
  end
  
  private

    def user_params
      params[:user].permit(:email, :password, :password_confirmation)  
    end

end