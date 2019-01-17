class Admin::UsersController < Admin::BaseController
  def index
    @users = User.newest.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end
end
