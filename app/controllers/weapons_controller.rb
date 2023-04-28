class WeaponsController < ApplicationController
  def index
    @weapons = Weapon.all
  end

  def create
  end

  def destroy
  end

  def show
  end
end
