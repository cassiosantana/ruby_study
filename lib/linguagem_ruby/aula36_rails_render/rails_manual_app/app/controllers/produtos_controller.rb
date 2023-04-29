class ProdutosController < ApplicationController
  before_action :carregar_produtos, except: [:incluir, :salvar]

  def index
    # # Renderizando os produtos em json
    render json: @produtos, status: 200

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

  def salvar
    produto = Produto2.find(params[:id])
    produto.nome = params[:nome]
    produto.descricao = params[:descricao]
    produto.save

    redirect_to '/produtos'
  end

  def excluir
    produto = Produto2.find(params[:id])
    produto.destroy

    redirect_to '/produtos'
  end

  private

  def carregar_produtos
    @produtos = Produto2.all
  end
end
