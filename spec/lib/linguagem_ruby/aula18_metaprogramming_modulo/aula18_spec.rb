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
end
