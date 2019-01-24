class ToursController < ApplicationController
  before_action :load_tour, only: :show
  def index
    @tours = Tour.newest.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end

  def show; end

  def destroy
    @tour = BookTour.find_by id: params[:id]
    if @tour.destroy
      flash[:success] = t "book_tour.cancel_success"
      redirect_to tours_path
    else
      flash[:danger] = t "book_tour.cancel_fails"
      redirect_to book_tours_path
    end
  end

  private

  def load_tour
    @tour = Tour.find_by id: params[:id]
    return if @tour
    flash[:danger] = t "messenger.no_data"
    render :index
  end
end
