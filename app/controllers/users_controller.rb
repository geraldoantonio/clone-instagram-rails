# frozen_string_literal: true

# app/controllers/users_controller.rb
class UsersController < ApplicationController
  include SuggestedUsers

  before_action :set_suggested_users, only: :show

  def show
    user = User.find_by_username(params[:username])
    @posts = user.posts.includes(:created_by).order(created_at: :desc)

    render 'posts/index'
  end

  def edit; end

  def update
    if current_user.update(user_params)
      redirect_to root_path, notice: 'Seu perfil foi atualizado com sucesso.'
    else
      flash.now[:alert] = current_user.errors.full_messages.to_sentence
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:name)
  end
end
