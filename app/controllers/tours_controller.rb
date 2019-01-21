class ToursController < ApplicationController
  def index
    @tours = Tour.newest.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end
end
