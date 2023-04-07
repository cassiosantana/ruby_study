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

    it 'Expor método privado' do
      teste_dois = Aula20::ClasseTesteUm.new
      nome = teste_dois.instance_eval { meu_nome }
      expect(nome).to eq('Roger')
    end
  end

  context 'Definir métodos com instance_eval' do
    it 'Definir em instância' do
      teste_tres = Aula20::ClasseTesteUm.new
      teste_tres.instance_eval do
        def metodo_nome
          'Santana'
        end
      end
      expect(teste_tres.metodo_nome).to eq('Santana')
    end

    it 'Definir em classe' do
      # o mesmo que utilizar o self.metodo_idade
      Aula20::ClasseTesteUm.instance_eval do
        def metodo_idade
          33
        end
      end
      idade = Aula20::ClasseTesteUm.metodo_idade
      expect(idade).to eq(33)
    end
  end
end
