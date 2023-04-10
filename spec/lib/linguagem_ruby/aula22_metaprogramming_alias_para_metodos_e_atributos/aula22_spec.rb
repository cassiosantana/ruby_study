# frozen_string_literal: true

require 'spec_helper'
require 'linguagem_ruby/aula22_metaprogramming_alias_para_metodos_e_atributos/aula22'

RSpec.describe Aula22 do
  it 'Sobrescrito método herdado' do
    resultado = Aula22::ClasseTeste2.new.ola
    expect(resultado).to eq('olá sobrescrito')
  end

  it 'Sobrescrito método herdado + super' do
    resultado = Aula22::ClasseTeste3.new.ola
    expect(resultado).to eq('olá sobrescrito - olha original')
  end
end
