class StaticPagesController < ApplicationController
  def home
    @tours = Tour.order_by_name.search_tour(params[:search])
      .paginate page: params[:page], per_page: Settings.tour.per_page
  end
end
