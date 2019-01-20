module ApplicationHelper
  include TourHelper
  def full_title page_title
    base_title = I18n.t "framgia.base_title"
    if page_title.blank?
      base_title
    else
      page_title + " | " + base_title
    end
  end
end
