class ToursController < ApplicationController
  before_action :load_tour, only: :show
  def index
    @tours = Tour.newest.search_tour(params[:search])
      .paginate page: params[:page], per_page: Settings.tour.per_page
  end

  def show; end

  private

  def load_tour
    @tour = Tour.find_by id: params[:id]
    return if @tour
    flash[:danger] = t "messenger.no_data"
    render :index
  end
end
