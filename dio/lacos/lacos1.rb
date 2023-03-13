# while
valor = 5
while valor > 0
    puts "Valor é: %05d" % valor
    valor -= 1
end

puts "#" * 30

valor2 = 5
while valor2 > 0
    puts "Valor é: #{valor2} ; Laço com break"

    break if valor2 == 3
    
    valor2 -= 1
end

puts "#" * 30

# for - apenas iteráveis que respondem ao método each
for numero in [1, 2, 3, 4, 5]
    puts "Número é: #{numero}"
end

puts "#" * 30

range = 0..5
for numero in range
    puts numero
end

puts "#" * 30

n1 = 0
n2 = 9
for numero in n1..n2
    puts numero
end

puts "#" * 30

# outra sintaxe equivalente ao for em iteráveis (a comunidade usa mais essa forma pois é mais legivel)
lista = [0, 1, 2, 3, 4, 5]
lista.each do |numero|
    puts "Número da lista: #{numero}"
end

puts "#" * 30

range = 0..5
range.each do |numero|
    puts "Número do range: #{numero}"
end

puts "#" * 30

(0..5).each do |numero|
    puts "Número do range: #{numero}"
end

puts "#" * 30

hash = {nome: "Cassio", idade: 33} #############################################3333
hash.each do |chave, valor|
    puts "Minha chave é #{chave} com o valor é #{valor}"
end

puts "#" * 30

votos = {cassio: 1_333_444}
votos.each do |nome, quantidade_de_votos|
    puts "#{nome}, #{quantidade_de_votos}"
end

puts "#" * 30

# until
valor = 0
until valor == 10
   puts valor
   valor += 1
end 

# COMANDOS EM LAÇOS
# break - sai do laço
# return - sai do método além de sair do laço
# next - próxima iteração
# redo - repete o laço do inicio do bloco (não reavalia a condição)