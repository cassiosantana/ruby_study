# frozen_string_literal: true

module Aula21
  # define métodos em runtime
  class ClasseMetodoRuntime
    def self.definir(nome_metodo)
      define_method(nome_metodo) do
        'método runtime'
      end
    end
  end
end
