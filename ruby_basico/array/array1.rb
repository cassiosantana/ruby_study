# Array em ruby pode conter elementos de qualquer tipo

# formas e instanciar
lista = []
lista2 = Array.new

# tipo
puts lista.class
puts lista2.class

# formas de adicionar elementos
lista << 1
lista << "cassio"
lista << "13/06/1989"
p lista

lista2.append(2)
lista2.append("roger")
lista2.append("13/06/1989")
p lista2

# algumas operações de Array
puts lista.length
puts lista.empty?
puts lista.first
puts lista.last

# é possivel unir Arrays facilmente
lista3 = lista + lista2
p lista3

# Array de Arrays | necessário instanciar novo array
lista4 = []
lista4 << lista
lista4 << lista2
p lista4

# Array recebendo outro Array que contém 2 Arrays :)
lista5 = Array.new
lista5.append(lista4)
p lista5