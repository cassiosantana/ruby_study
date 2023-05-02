# frozen_string_literal: true

RSpec.describe LinguagemRuby do
  describe 'Types of classes' do
    context 'class' do
      let(:result) { Lesson03::TypesOfClasses.type_of(1) }

      it 'integer type' do
        expect(result).to eq(Integer)
      end
    end

    context 'superclass' do
      let(:result) { Lesson03::TypesOfClasses.superclass_of(1) }

      it 'numeric type' do
        expect(result).to eq(Numeric)
      end
    end

    context 'superclass of superclass' do
      let(:result) { Lesson03::TypesOfClasses.superclass_superclass_of(1) }

      it 'numeric type' do
        expect(result).to eq(Object)
      end
    end

    context 'nil class' do
      let(:result) { Lesson03::TypesOfClasses.type_of(nil) }
      it 'nil' do
        expect(result).to eq(NilClass)
      end
    end

    context 'symbol class' do
      let(:result) { Lesson03::TypesOfClasses.type_of(:name) }
      it 'symbol' do
        expect(result).to eq(Symbol)
      end
    end

    context 'array class' do
      let(:result) { Lesson03::TypesOfClasses.type_of([]) }
      it 'array' do
        expect(result).to eq(Array)
      end
    end

    context 'range class' do
      let(:result) { Lesson03::TypesOfClasses.type_of(0..1) }
      it 'range' do
        expect(result).to eq(Range)
      end
    end
  end
end
