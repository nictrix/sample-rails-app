# frozen_string_literal: true

# Used to manage user accounts
class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates :name, presence: true

  scope :recent, -> { where('created_at > ?', 1.week.ago) }
end
