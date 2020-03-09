# frozen_string_literal: true

# app/models/coment.rb
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :body, presence: true

  has_rich_text :body
end
