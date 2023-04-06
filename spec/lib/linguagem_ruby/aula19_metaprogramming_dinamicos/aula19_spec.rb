require 'spec_helper'
require 'linguagem_ruby/aula19_metaprogramming_dinamicos/aula19'

RSpec.describe Aula19 do
  context 'Lamda' do
    it 'ArgumentError - Lambda sem parâmetro' do
      l = ->(p) { p * 5 }
      expect { l.call }.to raise_error ArgumentError
    end

    it 'ArgumentError - Lambda com menos parâmetros' do
      l = ->(x, y) { x * y }
      expect { l.call 5 }.to raise_error ArgumentError
    end

    it 'ArgumentError - Lambda com mais parâmetros' do
      l = ->(x) { x * x }
      expect { l.call 5, 6 }.to raise_error ArgumentError
    end
  end
  context 'Proc' do
    it 'Proc sintaxe 01 em uma linha' do
      p = proc { |x| x * 10 }
      expect(p.call(5)).to eq(50)
    end

    it 'Proc sintaxe 02 com bloco do~end' do
      p = proc do |x|
        x * 10
      end
      expect(p.call(5)).to eq(50)
    end

    it 'Proc com argumentos' do
      p = proc do |arg1, arg2|
        "Nome: #{arg1}, Sobrenome: #{arg2}"
      end
      nome = 'Cassio'
      sobrenome = 'Santana'

      expect(p.call(nome, sobrenome)).to eq('Nome: Cassio, Sobrenome: Santana')
    end

    it 'Proc recebendo menos argumentos' do
      # não causa erro desde que o argumento faltante não seja
      # para utilizar em operações matemáticas etc...
      p = proc do |arg1, arg2|
        "Nome: #{arg1}, Sobrenome: #{arg2}"
      end
      nome = 'Cassio'
      expect(p.call(nome)).to eq('Nome: Cassio, Sobrenome: ')
    end

    it 'Proc recebendo mais argumentos' do
      # não causa erro
      p = proc do |x|
        x * 10
      end
      expect(p.call(5, 6)).to eq(50)
    end
  end
  context 'Eval' do
    it 'Eval sintaxe' do
      # interpreta a string como um código ruby
      resultado = eval("soma = 5 + 5")
      expect(resultado).to eq(10)
    end
  end

  context 'define_method' do
    it 'Definir método dinâmicamente' do
      Aula19::TesteDefineMethod.definir 'metodo_teste'
      string = Aula19::TesteDefineMethod.new.metodo_teste 'Cassio'
      expect(string).to eq('parâmetro: Cassio')
    end

    it 'Definir método dinâmicamente com each' do
      %w[metodo1 metodo2 metodo3].each do |parametro|
        Aula19::TesteDefineMethod.definir parametro
      end

      classe_teste = Aula19::TesteDefineMethod.new
      string1 = classe_teste.metodo1 'Cassio'
      string2 = classe_teste.metodo2 'Roger'
      string3 = classe_teste.metodo3 'Santana'

      expect(string1).to eq('parâmetro: Cassio')
      expect(string2).to eq('parâmetro: Roger')
      expect(string3).to eq('parâmetro: Santana')
      expect { classe_teste.metodo4 'Erro' }.to raise_error NoMethodError
    end
  end
end
