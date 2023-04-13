# frozen_string_literal: true

require 'spec_helper'
require 'linguagem_ruby/aula24_metaprogramming_missings/aula24'
require 'linguagem_ruby/aula24_metaprogramming_missings/aula24.1'

RSpec.describe 'Aula24' do
end

RSpec.describe 'Aula24.1' do
  it 'Constante não existe' do
    expect(ClasseTeste1::TESTE).to eq('Constante TESTE não existe')
  end

  it 'Método de classe não existe' do
    expect(ClasseTeste2.metodo1).to eq('Método de classe metodo1 não existe')
  end
end
