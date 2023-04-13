# frozen_string_literal: true

# módulo aula 24
module Aula24
end

# sobrescrevendo método da classe Module do Ruby
class Module
  # const_missing é um método que retorna um erro
  # caso uma constante não exista.
  # aqui estamos o sobrescrevendo para que tenha
  # o comportamento que desejamos.
  def const_missing(nome)
    puts "Classe #{nome} não encontrada"
  end
end

Cassio
