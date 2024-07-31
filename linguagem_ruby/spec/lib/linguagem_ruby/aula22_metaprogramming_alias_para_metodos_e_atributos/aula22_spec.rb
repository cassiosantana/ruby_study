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

  it 'Sobrescrito método + alias_method' do
    resultado = Aula22::ClasseTeste4.new.todos
    expect(resultado).to eq('olha original ------------- olá sobrescrito')
  end

  it 'Sobrescrito método utilizando módulo' do
    resultado1 = Aula22::ClasseTeste5.new.ola
    resultado2 = Aula22::ClasseTeste5.new.ola_original
    resultado3 = Aula22::ClasseTeste5.new.todos
    expect(resultado1).to eq('método redefinido do módulo')
    expect(resultado2).to eq('olha original')
    expect(resultado3).to eq('método redefinido do módulo---------olha original')
  end

  it 'Sobrescrito método utilizando módulo de forma mais genérica' do
    resultado1 = Aula22::ClasseTeste6.new.ola
    resultado2 = Aula22::ClasseTeste6.new.ola_original
    resultado3 = Aula22::ClasseTeste6.new.todos
    expect(resultado1).to eq('método redefinido do módulo')
    expect(resultado2).to eq('olha original')
    expect(resultado3).to eq('método redefinido do módulo---------olha original')
  end
end
