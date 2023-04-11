# frozen_string_literal: true

# módulo da aula 23
module Aula23
  def self.included(classe)
    puts "Teste included: modulo: #{self}, incluido em #{classe}"
  end

  def self.extended(classe)
    puts "Teste extended: modulo: #{self}, extendido em #{classe}"
  end
end

class ClasseTeste1
  include Aula23
end

class ClasseTeste2
  extend Aula23
end

class ClasseTestePai
  def self.inherited(classe)
    puts "Teste inherited: A classe #{classe} herda de #{self} "
  end
end

class ClasseTesteFilho < ClasseTestePai
end
