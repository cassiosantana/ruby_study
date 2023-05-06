require 'rails_helper'

RSpec.describe "Enemies", type: :request do
  describe "PUT /enemies" do
    context 'when the enemy exists' do
      it 'return status code 200' do
        enemy = create(:enemy)
        enemy_attributes = attributes_for(:enemy)
        put "/enemies/#{enemy.id}", params: enemy_attributes

        expect(response).to have_http_status(200)
      end

      # verifica se de fato a versão mais recente do enemy no banco de
      # dados contém os mesmos atributos que passamos.
      it 'updates the record' do
      end
      it 'returns the enemy updated'
    end

    context 'when the enemy does not exist' do
      it 'returns status code 404'
      it 'returns a not found message'
    end
  end
end
