# hash 

# formas de declarar
a = {}
puts a.class

a = {nome: 'cassio', telefone: 988888888}
puts a

a = {'nome' => 'roger', 'telefone' => 899999999}
puts a

a = {:nome => 'santana', :telefone => 77777777}
puts a

a = {
    nome: 'cassio', 
    telefone: 988888888
}
puts a

# atribuir e acessar valores em chaves do tipo símbolo
a[:nome] = 'karen'
a[:telefone] = '66666666'
puts a[:nome]
puts a[:telefone]

