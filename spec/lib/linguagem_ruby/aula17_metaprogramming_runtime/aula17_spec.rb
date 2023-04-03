# frozen_string_literal: true

require 'spec_helper'
require 'linguagem_ruby/aula17_metaprogramming_runtime/aula17'

RSpec.describe Aula17 do
  it 'É string' do
    a = 'cassio'
    expect(a.class).to eq(String)
  end

  it 'Exemplo 01 - método em instância' do
    exemplo01 = Aula17::Exemplo01.new
    def exemplo01.mostrar_nova_string
      'nova string'
    end

    valor = exemplo01.mostrar_nova_string

    expect(valor).to eq('nova string')
  end

  it 'Exemplo 02 - método em constante' do
    def String.mostrar_nova_string2
      'nova string 2'
    end

    valor = String.mostrar_nova_string2

    expect(valor).to eq('nova string 2')
  end

  it 'Exemplo 03 - sobrescrição de métodos' do
    golf = Aula17::Carro.new

    def golf.mostrar
      'mostrar do fiesta'
    end

    valor = golf.mostrar
    expect(valor).to eq('mostrar do fiesta')
  end
end
