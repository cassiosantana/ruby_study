# polimorfismo e overload

require_relative 'carro'
require_relative 'golf'

# polimorfismo é basicamente fazer subclasses se comportarem de formas diferentes
# de acordo com as sobrescrições definidas
Carro.new.mostrar
puts "-------------------------"
Golf.new.mostrar
Golf.new.andar 1, 2, 3, "Cassio"
