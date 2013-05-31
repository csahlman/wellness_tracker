class SessionsController < ApplicationController

  def new
    
  end

  def create
    user = User.find_by_email(params[:session][:email])
    if user && user.authenticate(params[:session][:password])
      sign_in user
      redirect_to new_wellness_tracker_path, success: "Thanks for signing up"
    else
      render :new
    end
  end

  def destroy
    sign_out
    redirect_to root_path, notice: "Signed Out"
  end
end