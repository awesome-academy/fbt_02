class User < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :book_tours

  enum role: {user: 0, admin: 1}
end
