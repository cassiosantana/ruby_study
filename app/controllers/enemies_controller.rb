class EnemiesController < ApplicationController
  before_action :set_enemies
  def update
    if @enemy.update(enemy_params)
      render json: @enemy, status: :ok
    else
      render json: { errors: @enemy.errors }, status: :unprocessable_entity
    end
  end

  def destroy
  end

  private

  def enemy_params
    params.permit(:name, :power_base, :power_tep, :level, :kind)
  end

  def set_enemies
    @enemy = Enemy.find(params[:id])
  rescue ActiveRecord::RecordNotFound => e
    render json: { message: e.message }, status: :not_found
  end
end
