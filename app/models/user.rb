class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :ratings, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :book_tours
  enum role: {user: 0, admin: 1}
  enum gender: {male: 0, female: 1}

  scope :newest, ->{order :created_at}
end
