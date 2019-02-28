class BookTour < ApplicationRecord
  belongs_to :tour
  belongs_to :user

  validate :check_valid_tour

  def check_valid_tour
    if quantity == nil
      errors.add(:quantity, Settings.book_tour.quantity_nil)
    elsif sum_quantity < quantity
      errors.add(:quantity, quantity.to_s + Settings.book_tour.quantity_cant)
    end
  end

  def sum_quantity
    tour.quantity - tour.book_tours.sum(:quantity)
  end
end
