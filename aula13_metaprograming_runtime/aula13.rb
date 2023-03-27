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

puts "------------------------------"

class Carro
    def initialize(nome = "Modelo padrão")
        @nome = nome
    end

    attr_accessor :nome, :porta, :painel, :roda
    attr_reader :pneu
    
    def mostrar(marca = "Marca padrão")
        puts "Marca: #{marca} - Modelo: #{self.nome}"
    end
end

fiesta = Carro.new
golf = Carro.new

# mudando o comportamento da classe Carro em tempo de execução
# nem sempre é necessário fazer herança.
def fiesta.mostrar
    "Mostrar do fiesta"
end

def golf.mostrar
    "Mostrar do golf"
end

puts fiesta.mostrar
puts golf.mostrar