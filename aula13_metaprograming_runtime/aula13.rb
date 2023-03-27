# metaprograming - runtime

a = "Danilo"

# definindo um método em tempo de execução alterando a instância
def a.mostrar_nova_string
    "nova string"
end

puts a
puts a.mostrar_nova_string

# definindo um método para a constante String
def String.mostrar_nova_string2
    "nova string 2"
end

puts "------------------------------"
puts String.mostrar_nova_string2