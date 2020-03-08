# frozen_string_literal: true

# app/controllers/concerns/suggested_users.rb
module SuggestedUsers
  extend ActiveSupport::Concern

  private

  def set_suggested_users
    @suggested_users = User.where.not(id: [current_user])
  end
end
