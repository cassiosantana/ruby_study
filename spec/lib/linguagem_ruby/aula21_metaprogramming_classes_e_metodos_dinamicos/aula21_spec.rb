# frozen_string_literal: true

require 'spec_helper'
require 'linguagem_ruby/aula21_metaprogramming_classes_e_metodos_dinamicos/aula21'

RSpec.describe Aula21 do
  it 'Método em runtime' do
    Aula21::ClasseMetodoRuntime.definir 'teste'
    resultado = Aula21::ClasseMetodoRuntime.new.teste

    expect(resultado).to eq('método runtime')
  end

  it 'Métodos em lote' do
    Aula21::VariosMetodosRuntime.definir_varios('metodo1', 'metodo2', 'metodo3')
    resultado1 = Aula21::VariosMetodosRuntime.new.metodo1
    resultado2 = Aula21::VariosMetodosRuntime.new.metodo2
    resultado3 = Aula21::VariosMetodosRuntime.new.metodo3

    expect(resultado1).to eq('metodo em runtime')
    expect(resultado2).to eq('metodo em runtime')
    expect(resultado3).to eq('metodo em runtime')
  end
end
