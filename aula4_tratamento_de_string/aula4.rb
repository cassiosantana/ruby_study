# aula demonstrando algums métodos para tratar strings
require 'byebug'


# gsub
a = 'nossa aula de hoje'
a = a.gsub('aula', 'aula 4')
puts a

# usando o bang
b = 'teste 3'
b.gsub!('3', '2')
puts b

# concatenação

# esta forma só funciona com aspas duplas " "
c = "Cássio"
puts d = "Meu nome é #{c}"

e = " Roger"
puts "Cassio" + e

puts "Cassio" << " Santana"
puts c << e

# substring
texto = 'aula de hoje'
puts texto[8, 10]