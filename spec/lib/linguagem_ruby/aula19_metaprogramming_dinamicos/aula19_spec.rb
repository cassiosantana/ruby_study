require 'spec_helper'
require 'linguagem_ruby/aula19_metaprogramming_dinamicos/aula19'

RSpec.describe Aula19 do
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
