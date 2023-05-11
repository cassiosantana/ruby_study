class HomeController < ApplicationController
  def index
    @cliente = Cliente.new
    @cliente.nome = "Cassio"
    @cliente.telefone = "81 9977-9977"
    @cliente.cpf = "77777777777"

    @valor = FormatString::Moeda.br(params[:moeda])  if params[:moeda].present?
  end
end
