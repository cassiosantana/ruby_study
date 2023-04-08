# frozen_string_literal: true

# aula 21 metaprogramming_classes_e_metodos_dinamicos
module Aula21
  # classe teste 1
  class TesteUm
    def self.definir(nome_metodo)
      define_method(nome_metodo) do
        'metodo definido'
      end
    end
  end

  # classe teste 2
  class TesteDois
    def self.definir(*metodos)
      metodos.each do |metodo|
        define_method(metodo) do
          "#{metodo} foi definido"
        end
      end
    end
  end
end
