class ProdutosController < ApplicationController
  def index
    @produtos = Produto2.all
  end
end