class HomeController < ApplicationController
  def index
    @valor = FormatString::Moeda.br(params[:moeda])  if params[:moeda].present?
  end
end
