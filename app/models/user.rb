class User < ApplicationRecord
  has_many :posts
  validates :name, presence: true

  scope :recent, -> { where('created_at > ?', 1.week.ago) }
end
