require 'rails_helper'

RSpec.describe Weapon, type: :model do
  describe 'Weapon level' do
    let(:level_above) { build(:weapon, level: FFaker::Random.rand(100..1000)) }
    let(:level_below) { build(:weapon, level: FFaker::Random.rand(-1000..0)) }

    context 'Invalid level' do
      it 'Level above allowed' do
        expect(level_above).to_not be_valid
      end

      it 'Level below the allowed' do
        expect(level_below).to_not be_valid
      end
    end
  end

  describe 'Weapon power base' do
    let(:power_base_above) { build(:weapon, power_base: FFaker::Random.rand(3001..10000)) }
    let(:power_base_below) { build(:weapon, power_base: FFaker::Random.rand(-10000..2999)) }

    context 'Invalid power base' do
      it 'Power base value above allowed' do
        expect(power_base_above).to_not be_valid
      end

      it 'Power base value below allowed' do
        expect(power_base_below).to_not be_valid
      end
    end
  end
end