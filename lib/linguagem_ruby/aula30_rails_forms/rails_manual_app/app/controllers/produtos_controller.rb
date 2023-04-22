class ProdutosController < ApplicationController
  before_action :carregar_produtos, except: [:incluir, :salvar]

  def index
  end

  def incluir
    produto = Produto2.new
    produto.nome = params[:nome]
    produto.descricao = params[:descricao]
    produto.save

    redirect_to '/produtos'
  end

  def alterar
    @produto = Produto2.find(params[:id])
    render :index
  end

  private

  def carregar_produtos
    @produtos = Produto2.all
  end
end
