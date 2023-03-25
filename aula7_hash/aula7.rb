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

# atribuir e acessar valores em chaves do tipo string
a['nome'] = 'Paulo'
a['telefone'] = 55555555
puts a['nome']
puts a['telefone']

# convertendo chave string em symbol
a['nome1'.to_sym] = 'Bruno'
a['telefone1'.to_sym] = 33333333
p a['nome1'] # chave não declarada
p a['telefone1'] # chave não declarada
puts a[:nome1]
puts a[:telefone1]

