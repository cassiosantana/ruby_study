# frozen_string_literal: true

# módulo aula 24
module Aula24
end

# # sobrescrevendo método da classe Module do Ruby
# class Module
  # const_missing é um método que retorna um erro
  # caso uma constante não exista.
  # aqui estamos o sobrescrevendo para que tenha
  # o comportamento que desejamos.
#   def const_missing(nome)
#     puts "Classe #{nome} não encontrada"
#   end
# end

# Cassio

# Cria classe caso não exista
class Module
  def const_missing(nome)
    existe = File.exist?("lib/linguagem_ruby/aula24_metaprogramming_missings/#{nome}.csv")
    unless existe
      puts "Classe #{nome} não encontrada"
    end
    const_set(nome, Class.new) # retorna a classe
  end
end

Roger
