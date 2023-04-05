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
end
