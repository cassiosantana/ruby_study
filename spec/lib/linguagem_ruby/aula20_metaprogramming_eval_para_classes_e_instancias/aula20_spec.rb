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

    it 'Definir em classe com <<' do
      class << String
        def metodo_altura
          172
        end
      end
      expect(String.metodo_altura).to eq(172)
    end
  end

  context 'Definições com class_eval' do
    it 'Definido método na instância' do
      Aula20::ClasseTesteUm.class_eval do
        def metodo_email
          'cassio@gmail.com'
        end
      end
      teste_quatro = Aula20::ClasseTesteUm.new
      email = teste_quatro.metodo_email

      expect(email).to eq('cassio@gmail.com')
    end
    it 'Definido método para classe String' do
      String.class_eval do
        def data_hoje
          '07/04/2023'
        end
      end

      a = 'data de hoje'
      data = a.data_hoje
      expect(data).to eq('07/04/2023')
    end
  end

  context 'Injetado código com eval dinamicamente' do
    it 'Método com class_eval' do
      Aula20::ClasseTesteDois.extend AtributoDinamico
      Aula20::ClasseTesteDois.atributo(:nome)
      classe_teste2 = Aula20::ClasseTesteDois.new
      classe_teste2.nome = 'Cassio Santana'
      expect(classe_teste2.nome).to eq('Cassio Santana')
    end

    it 'Método com instance_eval' do
      classe_teste3 = Aula20::ClasseTesteTres.new
        resultado = classe_teste3.metodo_aberto do
          def metodo4
            'metodo 4'
          end
          metodo3
        end
      expect(classe_teste3.metodo1).to eq('metodo 1')
      expect(resultado).to eq('metodo 3')
      expect(classe_teste3.metodo4).to eq('metodo 4')
    end
  end
end
