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

    it 'verifica se o código foi inserido na página' do
      Cachorro.create(nome: 'Boomer', raca: 'Beagle')
      Cachorro.create(nome: 'Austin', raca: 'Beagle')
      Cachorro.create(nome: 'Feeder', raca: 'Beagle')

      get '/cachorros'
      puts response.body
      expect(response.body).to match /<ul>.*?<li>/im
    end
  end
end
