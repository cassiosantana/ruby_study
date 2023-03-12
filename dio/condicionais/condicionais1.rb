# if-else básico
valor = 20
if valor > 50
    puts "Eu sou maior que 50"
else
    puts "Eu sou menor que 50"
end

if 10.even?
    puts "par"
else
    puts "ímpar"
end

# esif
if valor > 50
    puts "Eu sou maior que 50"
elsif valor == 50
    puts "Eu sou igual a 50"
else
    puts "Eu sou menor que 50"
end

# if em uma única linha
puts "Eu sou maior que 50" if valor > 50
puts "10 é maior que 4" if 10 > 4

# unless executa se a condição for falsa | pode ter else mas pode ficar confuso
unless valor > 50
    puts "Eu sou maior que 50"
end

unless 5 > 10
    puts '10 é maior'
end

# ternario
puts 10 > 5 ? "10 é maior" : "10 é menor"

valor = 60
puts valor > 50 ? "Maior" : "Menor"

idade = 23
puts (14..20).include?(idade) ? "adolescente" : "não é adolescente"
puts (168..180).include?(172) ? 'altura média brasileira' : 'fora do padrão basileiro' 

# case
linguagem = "ruby"
case linguagem
when "ruby"
    puts "bem vindo ao ruby"
when "golang"
    puts "curso indisponível"
else
    puts "curso inexistente"
end

# case
print "Digite o valor a verificar: "
valor = gets.chomp.to_i
case valor
when 1..10
    puts "entre 1 e 10"
when 11..20
    puts "entre 11 e 20"
when 21..30
    puts "entre 21 e 30"
when 31..40
    puts "entre 31 e 40"
when 41..50
    puts "entre 41 e 50"
else
    puts "menor de que 1 ou maior que 50"
end

case 'Brasil'
    when 'Brasil'
        puts 'Fala português'
    when 'Espanha'
        puts 'Fala espanhol'
    when 'Australia'
        puts "Fala inglês"
    else 
        puts 'Nacionalidade desconhecida'
    end