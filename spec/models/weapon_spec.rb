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
end