# frozen_string_literal: true

class ApplicationMasterRecord < ApplicationRecord
  self.abstract_class = true

  scope :listing, lambda {
    where(is_usable: true).order(:order)
  }
end
