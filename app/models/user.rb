class User < ApplicationRecord
  has_many :ratings, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :book_tours
  enum role: {user: 0, admin: 1}
  enum gender: {male: 0, female: 1}

  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  validates :name, :gender, :date_of_birth, presence: true
  validates :name, presence: true, length:
    {maximum: Settings.user.name.max_length}
  validates :email, presence: true, length:
    {maximum: Settings.user.email.max_length},
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: {case_sensitive: false}
  validates :password, presence: true, length:
    {minimum: Settings.user.password.min_length,
     maximum: Settings.user.password.max_length}
  validates :password, presence: true, length:
    {minimum: Settings.user.password.min_length}, allow_nil: true

  before_save{email.downcase!}

  scope :newest, ->{order :created_at}

  has_secure_password

  def self.digest string
    cost = if ActiveModel::SecurePassword.min_cost
             BCrypt::Engine::MIN_COST
           else
             BCrypt::Engine.cost
           end
    BCrypt::Password.create string, cost: cost
  end
end
