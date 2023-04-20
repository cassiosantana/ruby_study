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
    # produto = Produto.new
    # produto.id = 4
    # produto.excluir

    # buscar
    # @produtos = Produto.buscar

    # utilizando o comando do active record para buscar todos os dados do banco
    @produtos = Produto2.all
  end
end
