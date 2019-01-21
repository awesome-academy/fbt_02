module TourHelper
  def route content
    return if content.length <= Settings.tour.length_small
    truncate content, length: Settings.tour.length_big
  end
end
