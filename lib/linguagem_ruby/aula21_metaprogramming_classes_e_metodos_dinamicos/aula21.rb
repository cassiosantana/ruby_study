# frozen_string_literal: true

# aula 21 metaprogramming_classes_e_metodos_dinamicos
module Aula21
  # define métodos em runtime
  class ClasseMetodoRuntime
    def self.definir(nome_metodo)
      define_method(nome_metodo) do
        'método runtime'
      end
    end
  end

  # não entendi. pesquisar posteriormente
  # class ClasseEmRuntime
  #   def definir_classe(classe)
  #     classe = classe.capitalize
  #     eval("class #{classe} end")
  #     classe = Object.const_get(classe)
  #   end
  # end

  # define vários métodos dinâmicamente
  class VariosMetodosRuntime
    def self.definir_varios(*metodos)
      metodos.each do |metodo|
        define_method(metodo) do
          'metodo em runtime'
        end
      end
    end
  end
end
