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
end
