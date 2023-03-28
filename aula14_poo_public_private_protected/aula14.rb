# poo_public_private_protected

require_relative 'carro'
require_relative 'fiesta'

carro = Carro.new
carro.mostrar
puts carro.algo_mais2

# acessar método privado diretamente causa erro.
# puts carro.algo_mais
puts "------------------------------------------"

fiesta = Fiesta.new
# o ruby tem uma peculiariadade quando falamos de atributos privados
# no ruby os atributos e métodos privados são exergados pelas subclasses
# podemos entender que o ruby entende que o privado deve ser acessado por ser
# uma instãncia da superclasse
# mas se fosse definido Fiesta.new.mostrar_privado geraria o erro
puts fiesta.mostrar_privado
