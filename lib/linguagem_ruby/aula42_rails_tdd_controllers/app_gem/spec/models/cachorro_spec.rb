require 'rails_helper'

RSpec.describe Cachorro, type: :model do
  it 'testa a instancia de cachorro' do
    expect(Cachorro.new).to be_present
  end

  it 'testa propriedades' do
    cachorro = Cachorro.new
    expect(cachorro.respond_to?(:nome)).to be_truthy
    expect(cachorro.respond_to?(:raca)).to be_truthy
  end

  it 'testa método save' do
    cachorro = Cachorro.new
    cachorro.nome = 'Boomer'
    cachorro.raca = 'Beagle'

    expect(cachorro.save).to be_truthy
  end

  it 'testa método save para alterar' do
    cachorro = Cachorro.new
    cachorro.nome = 'Boomer'
    cachorro.raca = 'Beagle'
    cachorro.save

    novo_nome = "Boomer " + DateTime.now.to_s
    c2 = Cachorro.find(cachorro.id)
    c2.nome = novo_nome
    c2.save

    expect(c2.save).to be_truthy
    expect(Cachorro.where(nome: novo_nome).count > 0).to be_truthy
  end

  it 'testa método destroy para apagar' do
    novo_nome = "Boomer - deletar" + DateTime.now.to_s
    cachorro = Cachorro.new
    cachorro.nome = novo_nome
    cachorro.raca = 'Beagle'
    cachorro.save

    expect(Cachorro.where(nome: novo_nome).count > 0).to be_truthy

    cachorro.destroy

    expect(Cachorro.where(nome: novo_nome).count == 0).to be_truthy
  end
end
