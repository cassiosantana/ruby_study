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

  def definir_classe(classe, nome_metodo)
    if classe.is_a?(String)
      classe = classe.capitalize
      eval("class #{classe} end")
      classe = Object.const_get(classe)
    end
    classe.class_eval do
      define_method(nome_metodo) do |*parametros|
        "O valor dos parâmetros é #{parametros.join('-')}"
      end
    end
    classe
  end

  # classe teste 3
  class TesteTres
    include Aula21
  end

  # classe teste 4
  class TesteQuatro
    include Aula21

    def arrs(classes, metodos)
      arr_classes = []
      classes.each do |classe|
        metodos.each do |metodo|
          classe = definir_classe(classe, metodo)
        end
        arr_classes << classe
      end
      arr_classes
    end
  end
end
