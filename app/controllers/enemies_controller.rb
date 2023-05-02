class EnemiesController < ApplicationController
  before_action :set_enemies
  def update
  end

  def destroy
  end

  private

  def set_enemies
    @enemy = Enemy.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message }, status: :not_found
  end
end
