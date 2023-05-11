class CachorrosController < ApplicationController
  def index
    @cachorros = Cachorro.all
  end
end
