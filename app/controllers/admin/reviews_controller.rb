class Admin::ReviewsController < Admin::BaseController
  def index
    @search = Comment.includes(:user).joins(:user).ransack params[:q]
    @reviews = @search.result.newest.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end
end
