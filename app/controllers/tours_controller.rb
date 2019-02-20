class ToursController < ApplicationController
  before_action :authenticate_user!, only: :show
  before_action :load_tour, only: :show
  authorize_resource

  def index
    @search = Tour.ransack params[:q]
    @tours = @search.result.newest.paginate page: params[:page],
      per_page: Settings.tour.per_page
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
