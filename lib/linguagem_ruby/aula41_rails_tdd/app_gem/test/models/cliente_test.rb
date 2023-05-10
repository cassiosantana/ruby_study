require "test_helper"

class ClienteTest < ActionDispatch::IntegrationTest
  test "a instância de cliente precisa ser válida" do
    # o assert recebe um booleano para validar o teste
    assert Cliente.new.present?
  end
end
