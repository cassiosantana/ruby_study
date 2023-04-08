# frozen_string_literal: true

require 'spec_helper'
require 'linguagem_ruby/aula21_metaprogramming_classes_e_metodos_dinamicos/aula21'

RSpec.describe Aula21 do
  it 'Criada classe dinâmicamente' do
    classe = +'cassio'
    classe.capitalize!
    eval("class #{classe} end")
    classe = Object.const_get(classe)

    expect(classe.class).to eq(Class)
  end

  it 'Criado método dinâmicamente' do
    Aula21::TesteUm.definir 'teste'
    resultado = Aula21::TesteUm.new.teste
    expect(resultado).to eq('metodo definido')
  end

  it 'Criadas classes dinâmicamente em lote' do
    def definir_classe(nome_classe)
      classe = nome_classe.capitalize
      eval("class #{classe} end")
      Object.const_get(classe)
    end

    arr = []

    %w[produto cliente pedido].each do |nome_classe|
      arr << definir_classe(nome_classe)
    end

    expect(arr).to eq([Produto, Cliente, Pedido])
  end

  it 'Criados métodos dinâmicamente em lote' do
    Aula21::TesteDois.definir 'metodo1', 'metodo2', 'metodo3'
    resultado1 = Aula21::TesteDois.new.metodo1
    resultado2 = Aula21::TesteDois.new.metodo2
    resultado3 = Aula21::TesteDois.new.metodo3

    expect(resultado1).to eq('metodo1 foi definido')
    expect(resultado2).to eq('metodo2 foi definido')
    expect(resultado3).to eq('metodo3 foi definido')
  end
end
