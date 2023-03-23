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
