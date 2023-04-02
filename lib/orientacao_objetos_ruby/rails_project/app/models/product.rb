class Product < ApplicationRecord
end

# ANOTAÇÕES SOBRE O RAILS

# o rails cria o id dos objetos no banco de dados automáticamente

# comando para rodar migrações do banco.
# se repetido somente novas alterações serão realizadas
# > bin/rails db:migrate

# desfazer a migração e apagar a tabela
# > bin/rails db:rollback

# o rails tem seu próprio console
# > bin/rails console

# o rails executa comandos sql automaticamente se baseando nos metodos chamados
# > Product.create(name: "Tv", price: 1500.0, active: true)

# retornar os objetos do banco de dados
# > Product.count

# se não adicionar o parâmetro que não pode ser nulo para criar o objeto 
# o rails faz o rollback

# fazer uma consulta que retorna o ultimo elemento da tabela
# > product = Product.last

# atualizar dados de um objeto
# > product.update(price: 1500.0)

# retornar o preço de um objeto chamando o nome do atributo
# > product.price.to_f

# retornar todos os produtos da tabela em um array
# > array_produtos = Product.all.to_a

# retornar o tamanho de um array com produtos ativos
# > Product.where(active: true).to_a.length

# retornar quantidade de produtos de um select que todos estão ativos
# > Product.where(active: true).length

# negação
# > Product.where.not(active: false)

# normal
# > Product.where(active: false)

# apagar um registro
# > product.destroy

# percorrer todos os produtos
# > Product.all

# condição que retorna muitos
# > Product.where(active: true)
# > Product.where(active: true).count

# funciona pq retorna uma relação
# * Product.where(active: true).each do |product| 
# * 	puts "O nome do produto é #{product.name}"
# * end

# abrir o console do banco em uso
# > bin/rails db

# SQL
# SELECT * FROM products;