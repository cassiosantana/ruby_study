require 'rails_helper'

RSpec.describe CachorrosController, type: :request do
  describe "GET /index" do
    it 'ter a variavel de classe @cachorros' do
      Cachorro.destroy_all
      cachorro = Cachorro.create(nome: 'Boomer', raca: 'Beagle')
      get '/cachorros'
      expect(assigns(:cachorros)).to eq([cachorro])
    end

    it 'esta rota tem que renderizar o template index' do
      get '/'
      expect(response).to render_template('index')
    end

    it 'retorna código de status 200' do
      get cachorros_path
      expect(response.status).to eq(200)
    end
  end
end
