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

  it 'Módulo como namespace' do
    cpf = Utilidades::Cpf.new.validar_cpf
    cnpj = Utilidades::Cnpj.new.validar_cnpj

    expect(cpf).to eq('cpf validado')
    expect(cnpj).to eq('cnpj validado')
  end

  it 'Módulo em instância' do
    teste = Utilidades::Teste.new
    teste.extend Utilidades

    cpf2 = teste.validar_cpf2
    cnpj2 = teste.validar_cnpj2

    expect(cpf2).to eq('cpf validado 2')
    expect(cnpj2).to eq('cnpj validado 2')
  end

  it 'Módulo em tipo String' do
    String.extend Utilidades

    resultado = String.validar_cnpj2

    expect(resultado).to eq('cnpj validado 2')
  end

  it 'Moludo em insância com include' do
    String.include Utilidades
    resultado = 'cassio roger de santana'.tirar_espacos

    expect(resultado).to eq('cassio-roger-de-santana')
  end

  it 'Módulo em classe usando include e extend' do
    class ClasseTeste1
      # desta forma o include injeta o código na classe
      class << self
        include Utilidades
      end
    end

    class ClasseTeste2
      # equivalente à classe anterior
      extend Utilidades
    end

    resultado1 = ClasseTeste1.validar_cpf2
    resultado2 = ClasseTeste2.validar_cpf2

    expect(resultado1).to eq('cpf validado 2')
    expect(resultado2).to eq('cpf validado 2')
  end

  it 'Móludo dentro de módulo - inclui em classe e instância' do
    class TesteTextos
      include Textos # instância
      extend Textos::SubTextos # classe
    end

    teste_textos = TesteTextos.new.texto
    teste_subtexto = TesteTextos.subtexto

    expect(teste_textos).to eq('texto')
    expect(teste_subtexto).to eq('subtexto')
  end

  it 'included' do
    class NovaClasse
      include InstanciaEClasse
    end

    teste_instancia = NovaClasse.new.metodo_instancia
    teste_classe = NovaClasse.metodo_classe

    expect(teste_instancia).to eq('metodo instância')
    expect(teste_classe).to eq('metodo classe')
  end
end
