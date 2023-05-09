# frozen_string_literal: true

RSpec.describe FormatString do
  it "has a version number" do
    expect(FormatString::VERSION).not_to be nil
  end

  it "test formatting in real" do
    expect(FormatString::Moeda.br(2)).to eq('R$2')
  end

  it "test formatting in dolar" do
    expect(FormatString::Moeda.us(2)).to eq('$2')
  end
end
