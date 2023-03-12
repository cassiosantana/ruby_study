if-else básico
valor = 20
if valor > 50
    puts "Eu sou maior que 50"
else
    puts "Eu sou menor que 50"
end

#esif
if valor > 50
    puts "Eu sou maior que 50"
elsif valor == 50
    puts "Eu sou igual a 50"
else
    puts "Eu sou menor que 50"
end

# if em uma única linha
puts "Eu sou maior que 50" if valor > 50

# unless executa se a condição for falsa | pode ter else mas pode ficar confuso
unless valor > 50
    puts "Eu sou maior que 50"
end

# ternario
valor = 60
puts valor > 50 ? "Maior" : "Menor"

idade = 23
puts (14...20).include?(idade) ? "adolescente" : "não é adolescente"
