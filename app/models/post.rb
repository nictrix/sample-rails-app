# frozen_string_literal: true

# Manages posts for users
class Post < ApplicationRecord
  belongs_to :user
end
