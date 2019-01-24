class BookToursController < ApplicationController
  before_action :load_tour, only: :show

  def create
    @tour = BookTour.new tour_params
    if @tour.save
      flash[:success] = t "messenger.success_tour"
      redirect_to tours_path
    else
      flash[:success] = t "messenger.book_fails"
      render :show
    end
  end

  def show; end

  private

  def load_tour
    @tour = Tour.find_by id: params[:id]
    return if @tour
    flash[:danger] = t "messenger.no_data"
    redirect_to tours_path
  end

  def tour_params
    params.require(:book_tour).permit :user_id, :tour_id, :quantity,
      :price, :note
  end
end
