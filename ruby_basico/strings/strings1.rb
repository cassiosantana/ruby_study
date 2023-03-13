nome = "Cassio Santana"

puts "#{"-" * 15} puts #{"-" * 15}"

puts nome
puts nome.length
puts nome[0]
puts nome[-1]
puts nome[nome.length - 1]

puts "#{"-" * 15} print #{"-" * 15}"

# método print não aplica quebra de linha
print nome + "\n"
print nome.length # não é possivel concatenar com "\n"
print "\n" + nome[0]
print "\n" + nome[-1]
print "\n" + nome[nome.length - 1] + "\n"

# uso do método p
puts "#{"-" * 15} print #{"-" * 15}"
p nome
p nome.length
p nome[0]
p nome[nome.length - 1]
