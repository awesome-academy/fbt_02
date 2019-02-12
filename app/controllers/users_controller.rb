class UsersController < ApplicationController
  before_action :load_user, only: %i(show edit update)

  def show; end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    @user.gender = params[:gender].to_i
    if @user.save
      log_in @user
      flash[:success] = t "welcome"
      redirect_to root_path
    else
      render :new
    end
  end

  def edit; end

  def update
    @user.gender = params[:gender].to_i
    if @user.update_attributes user_params
      flash[:success] = t "user.update"
      redirect_to @user
    else
      render :edit
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
