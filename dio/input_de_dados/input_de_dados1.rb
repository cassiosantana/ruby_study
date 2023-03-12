# receber valor adicionando a quebra de linha (\n)
print "Digite um número: "
numero1 = gets
p "O número digitado foi #{numero1}"
p numero1.class
puts "#" * 50

# receber valor sem adicionar a quebra de linha (\n)
print "Digite outro número: "
numero2 = gets.chomp
p "O outro número é #{numero2}"
p numero2.class
puts "#" * 50

# receber valor convertendo para inteiro
print "Digite um terceiro número: "
numero3 = gets.chomp.to_i
p "Terceiro número foi: #{numero3}"
p numero3.class

# soma de valores
puts "@" * 50
p numero1 + numero2
p numero3 * 2