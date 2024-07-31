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

  def overwrite(nome)
    alias_method "#{nome}_original", nome

    define_method(nome) do
      'método redefinido do módulo'
    end

    define_method('todos') do
      send(nome) + '---------' + send("#{nome}_original")
    end
  end

  # classe de teste 5
  class ClasseTeste5 < ClasseTeste1
    extend Aula22
    overwrite :ola
  end

  def overwrite2(nome, &bloco)
    alias_method "#{nome}_original", nome

    define_method(nome, &bloco)

    define_method('todos') do
      send(nome) + '---------' + send("#{nome}_original")
    end
  end

  # classe de teste 6
  class ClasseTeste6 < ClasseTeste1
    extend Aula22
    overwrite :ola do
      'método redefinido na classe 6'
    end
  end
end
