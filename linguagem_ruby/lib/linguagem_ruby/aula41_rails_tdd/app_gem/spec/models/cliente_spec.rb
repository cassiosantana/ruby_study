require 'rails_helper'

RSpec.describe "Este é para a classe de cliente" do
  it 'testa a instancia de cliente' do
    expect(Cliente.new).to be_present
  end

  it 'testa propriedades' do
    cliente = Cliente.new
    expect(cliente.respond_to?(:nome)).to be_truthy
    expect(cliente.respond_to?(:telefone)).to be_truthy
    expect(cliente.respond_to?(:cpf)).to be_truthy
  end
end