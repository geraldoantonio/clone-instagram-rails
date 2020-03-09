# frozen_string_literal: true

# app/models/like.rb
class Like < ApplicationRecord
  belongs_to :post
  belongs_to :user

  validates :post_id, uniqueness: { scope: :user_id, message: 'post já está curtido' }
end
