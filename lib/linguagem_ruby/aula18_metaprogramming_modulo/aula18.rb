# frozen_string_literal: true

# aula18_metaprogramming_modulo
module Aula18
  # classe de exmplo
  class Carro
    attr_accessor :proprietario

    def initialize
      @proprietario = 'cassio'
    end
  end
end

module Utilidades
  class Cpf
    def validar_cpf
      'cpf validado'
    end
  end

  class Cnpj
    def validar_cnpj
      'cnpj validado'
    end
  end
end