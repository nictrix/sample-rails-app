# frozen_string_literal: true

# Abstract class from ActiveRecord::Base
class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
end
