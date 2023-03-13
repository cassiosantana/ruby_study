numero1 = 75.0
puts "Número com duas casas decimais: %.2f" % numero1

numero2 = 45
puts "Número inteiro com 5 dígitos %05d" % numero2


# Ponto de exclamação no fim do método garante que o valor da variável seja alterado.
nome = "CASSIO"
puts nome.downcase # cria outra variável na memória com os dígitos alterados
p nome # mesma variável
puts nome.downcase! # altera o valor da variável
p nome # variável com o valor alterado

puts nome.capitalize
p nome

# gsub - altera valores de texto
texto = "Hello World"
puts texto.gsub("World", "Cassio")