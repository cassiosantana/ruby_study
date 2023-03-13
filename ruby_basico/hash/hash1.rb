# estrutura chave-valor semelhante ao Map do java

# formas de instanciação
hash = {}
hash = Hash.new

# formas de atribuir e acessar valores
# por serem imutáveis os simbolos são melhores para serem as chaves dos hashs
h = {"nome" => "cassio", "idade" => 33}
puts h["nome"]

h2 = {:nome => "roger", :idade => 33}
puts h2[:nome]

h3 = {nome: "santana", idade: 33}
puts h3[:nome]

# inserir, reatribuir e acessar o hash
dados_pessoais = {}
dados_pessoais[:nome] = "cassio"
dados_pessoais[:idade] = 42
dados_pessoais[:nome] = "roger" # reatribuição
p dados_pessoais
p dados_pessoais[:idade]

# alguns métodos
p h.keys
p h.values
p h.empty?

# outros exemplos
votos = {cassio: 50}
votos[:zama] = 30
votos[:roger] = votos[:zama] + votos[:cassio]
puts votos