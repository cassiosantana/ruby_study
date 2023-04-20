class HomeController < ApplicationController
  def index
    @teste = 'Cássio'

    # inserir produto
    produto = Produto.new
    produto.nome = 'Pneu traseiro'
    produto.salvar

    @produtos = Produto.buscar
  end
end
