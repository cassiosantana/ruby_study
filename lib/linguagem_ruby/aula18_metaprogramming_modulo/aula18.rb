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

  class Teste
  end

  def validar_cpf2
    'cpf validado 2'
  end

  def validar_cnpj2
    'cnpj validado 2'
  end

  def tirar_espacos
    gsub(" ", "-")
  end
end

module Textos
  def texto
    'texto'
  end

  module SubTextos
    def subtexto
      'subtexto'
    end
  end
end
