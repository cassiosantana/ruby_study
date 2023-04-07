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
end
