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
end
