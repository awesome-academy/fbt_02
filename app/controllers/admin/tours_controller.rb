class Admin::ToursController < Admin::BaseController
  def index
    @tours = Tour.destination_tour.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end
end
