module ProdutosHelper
  def rota
    rota = "/produto/incluir"
    @nome = ""
    @descricao = ""
    if @produto.present?
      rota = "/produto/#{@produto.id}/salvar"
      @nome = @produto.nome
      @descricao = @produto.descricao
    end
    rota
  end
end
