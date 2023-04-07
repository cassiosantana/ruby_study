# frozen_string_literal: true

require 'spec_helper'
require 'linguagem_ruby/aula20_metaprogramming_eval_para_classes_e_instancias/aula20'

RSpec.describe Aula20 do
  context 'Executar código com eval' do
    it 'Executar soma em string' do
      x = '5 + 5'
      resultado = eval(x)
      expect(resultado).to eq(10)
    end
  end

  context 'Expor atributos' do
    it 'Expor valores de variáveis privadas' do
      teste_um = Aula20::ClasseTesteUm.new
      nome = teste_um.instance_eval { @nome }
      expect(nome).to eq('Cassio')
    end
  end
end
