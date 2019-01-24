class SessionsController < ApplicationController
  def login; end

  def create
    user = User.find_by email: params[:session][:email].downcase
    if user&.authenticate(params[:session][:password])
      log_in user
      redirect_to root_path
    else
      flash.now[:danger] = t "messenger.login_fail"
      render :login
    end
  end

  def destroy; end
end
