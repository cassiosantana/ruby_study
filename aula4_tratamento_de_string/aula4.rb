# aula demonstrando algums métodos para tratar strings
require 'byebug'


# gsub | também é possível remover espaços
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

# scan | com regex
puts texto.scan(/aula/)

# split
puts texto.split(" ")

# downcase e upcase
texto = "NOSSA aula"
puts texto.downcase
puts texto.upcase

# captalize | exeplo de uso é definir uma classe em tempo de execução
puts texto.capitalize

# delete
texto = "Nossa aula 4 de hoje"
puts texto.delete("sa")

# strip | equivalente ao trim do java
texto = "        #  teste strip  #             "
puts texto
puts texto.strip
puts texto.rstrip
puts texto.lstrip