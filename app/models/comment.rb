class Comment < ApplicationRecord
  belongs_to :tour
  belongs_to :user
  scope :newest, ->{order :created_at}
  delegate :name, to: :user
end
