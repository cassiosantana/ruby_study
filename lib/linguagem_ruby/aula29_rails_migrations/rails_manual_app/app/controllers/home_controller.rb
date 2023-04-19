class HomeController < ApplicationController
  def index
    @teste = 'Cássio'
    @produtos = Produto.buscar
  end
end
