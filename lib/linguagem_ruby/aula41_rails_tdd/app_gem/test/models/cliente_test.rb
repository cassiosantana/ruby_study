require "test_helper"

class ClienteTest < ActionDispatch::IntegrationTest
  test "a instância de cliente precisa ser válida" do
    # o assert recebe um booleano para validar o teste
    assert Cliente.new.present?
  end

  test "os métodos tem que ser válidos" do
    cliente = Cliente.new

    #verifica se cada método passado como parâmetro está respondendo como deveria e retorna um booleano
    assert cliente.respond_to?(:nome)
    assert cliente.respond_to?(:telefone)
    assert cliente.respond_to?(:cpf)
  end
end
