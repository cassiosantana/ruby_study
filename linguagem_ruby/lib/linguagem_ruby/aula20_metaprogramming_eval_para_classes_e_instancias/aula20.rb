# frozen_string_literal: true

# módulo aula 20
module Aula20
  # classe de teste número 1
  class ClasseTesteUm
    # attr_accessor :nome

    def initialize
      @nome = 'Cassio'
    end

    private

    def meu_nome
      'Roger'
    end
  end

  # classe de teste numero 2
  class ClasseTesteDois
  end

  # class de teste numero 3
  class ClasseTesteTres
    def metodo1
      'metodo 1'
    end

    def metodo_aberto(&bloco)
      instance_eval(&bloco)
    end

    private

    def metodo3
      'metodo 3'
    end
  end
end

# módutlo de teste
module AtributoDinamico
  def atributo(atr)
    class_eval %{
      def #{atr}
        @#{atr}
      end
      def #{atr}=(value)
        @#{atr} = value
      end
    }
  end
end
