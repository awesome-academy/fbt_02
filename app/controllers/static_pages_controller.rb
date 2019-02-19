class StaticPagesController < ApplicationController
  def home
    @search = Tour.ransack params[:q]
    @tours = @search.result.order_name.paginate page: params[:page],
      per_page: Settings.tour.per_page
  end
end
