# frozen_string_literal: true

# múdulo aula21
module Aula22
  # classe para exemplificar herança
  class ClasseTeste1
    def ola
      'olha original'
    end
  end

  # classe exemplo herança com sobrescrição de método
  class ClasseTeste2 < ClasseTeste1
    # sobrescrevendo desta forma perde-se o método original
    def ola
      'olá sobrescrito'
    end
  end

  # classe exemplo herança com sobrescrição de método
  class ClasseTeste3 < ClasseTeste1
    # sobrescrevendo desta forma perde-se o método original
    def ola
      "olá sobrescrito - #{super}"
    end
  end

  # classe exemplo do uso alias
  class ClasseTeste4 < ClasseTeste1
    alias_method :ola_original, :ola

    def ola
      'olá sobrescrito'
    end

    def todos
      "#{ola_original} ------------- #{ola}"
      # send('ola_original') + ' ------------- ' + ola # mais dinâmico
    end
  end
end
