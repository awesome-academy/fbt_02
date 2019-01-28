class StaticPagesController < ApplicationController
  before_action :load_tour, only: :home

  def home
    @tours = Tour.order_by_name.search_tour(params[:search])
      .paginate page: params[:page], per_page: Settings.tour.per_page
  end

  private

  def load_tour
    @tour = Tour.find_by id: params[:id]
    return if @tours
    flash[:danger] = t "messenger.no_data"
    redirect_to root_path
  end
end
