class Admin::UsersController < Admin::BaseController
  def index
    @search = User.ransack params[:q]
    @users = @search.result.newest.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end
end
