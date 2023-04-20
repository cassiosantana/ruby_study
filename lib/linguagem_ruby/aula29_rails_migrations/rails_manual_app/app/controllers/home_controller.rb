class HomeController < ApplicationController
  def index
    @teste = 'Cássio'

    # inserir produto
    # produto = Produto.new
    # produto.nome = 'Pneu traseiro'
    # produto.salvar

    # atualizar
    produto = Produto.new
    produto.id = 4
    produto.nome = 'Pneu dianteiro'
    produto.atualizar

    @produtos = Produto.buscar
  end
end
