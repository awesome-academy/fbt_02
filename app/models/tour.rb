class Tour < ApplicationRecord
  has_and_belongs_to_many :hotels
  belongs_to :category
  has_many :ratings
  has_many :comments
  has_many :book_tours

  scope :destination_tour,
    ->{where category_id: Settings.admin.destination_tour}
  scope :newest, ->{order :created_at}
  scope :order_name, ->{order :name}
end
