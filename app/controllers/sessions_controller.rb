class SessionsController < ApplicationController
  before_action :load_user, only: :create
  def login; end

  def create
    if @user&.authenticate(params[:session][:password])
      log_in @user
      redirect_to root_path
    else
      flash.now[:danger] = t "messenger.login_fail"
      render :login
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end

  private

  def load_user
    @user = User.find_by email: params[:session][:email].downcase
    return if @user
    flash[:danger] = t "layouts.messages.no_data"
    redirect_to root_path
  end
end
