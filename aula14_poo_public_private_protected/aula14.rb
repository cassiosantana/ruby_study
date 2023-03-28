# poo_public_private_protected

require_relative 'carro'
require_relative 'fiesta'

carro = Carro.new
carro.mostrar
puts carro.algo_mais2

# acessar método privado diretamente causa erro.
# puts carro.algo_mais