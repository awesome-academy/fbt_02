class ToursController < ApplicationController
  before_action :authenticate_user!, only: :show
  before_action :load_tour, only: %i(show load_status)
  authorize_resource

  def index
    @search = Tour.ransack params[:q]
    @tours = @search.result.newest.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end

  def show
    @status = load_status
  end

  private

  def load_tour
    @tour = Tour.find_by id: params[:id]
    return if @tour
    flash[:danger] = t "messenger.no_data"
    render :index
  end

  def load_status
    quantity = @tour.book_tours.sum :quantity
    @tour.quantity - quantity
  end
end
