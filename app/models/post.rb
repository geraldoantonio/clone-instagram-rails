# frozen_string_literal: true

# POST Docs
class Post < ApplicationRecord
  validates :description, presence: true
end
