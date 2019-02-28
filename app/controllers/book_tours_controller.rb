class BookToursController < ApplicationController
  before_action :load_tour, only: :show
  before_action :load_tour_for_create, only: :create

  def create
    @book_tour = BookTour.new tour_params
    if @book_tour.save
      flash[:success] = t "messenger.success_tour"
      redirect_to tours_path
    else
      flash[:danger] = t "messenger.book_fails"
      render :template => "book_tours/show"
    end
  end

  def show
    @book_tour = BookTour.new
  end

  private

  def load_tour
    @tour = Tour.find_by id: params[:id]
    return if @tour
    flash[:danger] = t "messenger.no_data"
    redirect_to tours_path
  end

  def load_tour_for_create
    @tour = Tour.find_by id: params[:book_tour][:tour_id]
    return if @tour
    flash[:danger] = t "messenger.no_data"
    redirect_to tours_path
  end

  def tour_params
    params.require(:book_tour).permit :user_id, :tour_id, :quantity,
      :price, :note
  end
end
