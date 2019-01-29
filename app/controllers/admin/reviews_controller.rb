class Admin::ReviewsController < Admin::BaseController
  def index
    @reviews = Comment.newest.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end
end
