json.extract! carro, :id, :nome, :marca_id, :ano, :created_at, :updated_at
json.url carro_url(carro, format: :json)
