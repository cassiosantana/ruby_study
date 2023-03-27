# metaprograming - runtime

a = "Danilo"

# definindo um método em tempo de execução alterando a instância
def a.mostrar_nova_string
    "nova string"
end

puts a
puts a.mostrar_nova_string