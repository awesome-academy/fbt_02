class UsersController < ApplicationController
  before_action :load_user, only: :show

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.gender = params[:gender].to_i
    if @user.save
      flash[:success] = t "welcome"
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "messenger.no_data"
    redirect_to root_path
  end

  def user_params
    params.require(:user).permit :name, :email, :date_of_birth,
      :address, :phone, :password, :password_confirmation
  end
end
