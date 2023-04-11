# frozen_string_literal: true

require 'spec_helper'
require 'linguagem_ruby/aula23_metaprogramming_hooks/aula23'

RSpec.describe Aula23 do
  it 'Classe que conhece as subclasses ' do
    resultado = Pai.lista_de_classes
    nome1 = Pai.lista_de_classes[0].new.mostre_o_nome
    expect(resultado.length).to eq(3)
    expect(nome1).to eq('Cassio')
  end
end
