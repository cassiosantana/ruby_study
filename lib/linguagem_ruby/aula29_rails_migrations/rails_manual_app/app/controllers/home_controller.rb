class HomeController < ApplicationController
  def index
    @teste = 'Cássio'

    # inserir produto
    # produto = Produto.new
    # produto.nome = 'Pneu traseiro'
    # produto.salvar

    # atualizar
    # produto = Produto.new
    # produto.id = 4
    # produto.nome = 'Pneu dianteiro'
    # produto.atualizar

    # excluir
    produto = Produto.new
    produto.id = 4
    produto.excluir

    @produtos = Produto.buscar
  end
end
