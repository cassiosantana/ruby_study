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
end
