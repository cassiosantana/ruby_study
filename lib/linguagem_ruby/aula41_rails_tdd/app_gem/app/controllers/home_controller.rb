class HomeController < ApplicationController
  def index
    @cliente = Cliente.new
    @valor = FormatString::Moeda.br(params[:moeda])  if params[:moeda].present?
  end
end
