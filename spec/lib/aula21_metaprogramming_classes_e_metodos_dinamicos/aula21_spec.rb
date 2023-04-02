# frozen_string_literal: true

require 'spec_helper'
require 'linguagem_ruby/aula21_metaprogramming_classes_e_metodos_dinamicos/aula21'

RSpec.describe Aula21 do
  it 'Método em runtime' do
    Aula21::ClasseMetodoRuntime.definir 'teste'
    resultado = Aula21::ClasseMetodoRuntime.new.teste

    expect(resultado).to eq('método runtime')
  end
end
