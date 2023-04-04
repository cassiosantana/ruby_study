require 'spec_helper'
require 'linguagem_ruby/aula18_metaprogramming_modulo/aula18'

RSpec.describe Aula18 do
  it 'Clone - estado e comportamento' do
    palio = Aula18::Carro.new

    # método em runtime
    def palio.portas
      4
    end

    fiesta = palio.clone
    expect(fiesta.proprietario).to eq('cassio')
    expect(fiesta.portas).to eq(4)
  end

  it 'Dup - estado' do
    palio = Aula18::Carro.new

    # método em runtime
    def palio.portas
      4
    end

    fiesta = palio.dup
    expect(fiesta.proprietario).to eq('cassio')
  end

  it 'Atribuição multipla de métodos com <<' do
    palio = Aula18::Carro.new
    class << palio
      def portas
        4
      end

      def aro
        14
      end

      def cor
        'preto'
      end
    end

    expect(palio.proprietario).to eq('cassio')
    expect(palio.portas).to eq(4)
    expect(palio.portas).to eq(4)
    expect(palio.cor).to eq('preto')
  end
end

RSpec.describe Utilidades do
  it 'Moludo como namespace' do
    cpf = Utilidades::Cpf.new.validar_cpf
    cnpj = Utilidades::Cnpj.new.validar_cnpj

    expect(cpf).to eq('cpf validado')
    expect(cnpj).to eq('cnpj validado')
  end
end
