# # metaprogramming_eval_para_classes_e_instancias
# require 'byebug'

# a = "puts 'Cassio'"
# # debugger
# eval(a)
# puts a

# a = "puts 1 + 2"
# eval(a)
# puts a

# puts '----------------------------------------------------'
# class Teste
#   def initialize
#     @nome = 'Roger'
#   end

#   private

#   def metodo_privado
#     @nome
#   end
# end

# # Obtendo valores de atributos privados com eval
# # lembrando que variáveis de classe não são expostas
# # fora da classe.
# teste = Teste.new
# teste.instance_eval{puts @nome}
# teste.instance_eval{puts metodo_privado}

# puts '----------------------------------------------------'
# # definindo métodos para uma instância em tempo de execução
# teste.instance_eval do
#   def metodo_1
#     puts 'variavel 1'
#   end
#   def metodo_2
#     puts 'variavel 2'
#   end
# end

# teste.metodo_1
# teste.metodo_2

# # a prova de que os métodos foram definidos apenas para a instância teste
# # é que outras intâncias da mesma classe causam erro justamente por estes
# # métodos estarem indefinidos.
# # teste2 = Teste.new
# # teste2.metodo_1 # undefined method `metodo_1'
# # teste2.metodo_2 # undefined method `metodo_2'

# puts '----------------------------------------------------'

# class Teste3
# end

# # definindo métodos de classe
# # equivalente a usar a palava self. no início dos métodos ou
# # ou class << self e adicionar os métodos
# Teste3.instance_eval do
#   def metodo1
#     puts 'teste 3 - método 1'
#   end

#   def metodo2
#     puts 'teste 3 - método 2'
#   end
# end

# Teste3.metodo1
# Teste3.metodo2

# puts '----------------------------------------------------'
# # usando o class_eval
# class Teste4; end

# # desta forma estou definindo métodos para a instância
# # da classe em tempo de execução
# Teste4.class_eval do
#   def metodo1
#     puts 'teste 4 - método 1'
#   end

#   def metodo2
#     puts 'teste 4 - método 2'
#   end
# end

# Teste4.new.metodo1

# puts '----------------------------------------------------'
# # definindo método para todas as instâncias de String
# String.class_eval do 
#   def de_instancia
#     puts 'método de_instancia'
#   end
# end

# 'a'.de_instancia

# # a definição acima equivale a esta
# nome = 'cassio'
# def nome.de_instancia2
#   puts 'método de_instancia 2'
# end

# nome.de_instancia2

# puts '----------------------------------------------------'
# # definindo método de classe para a classe String
# String.instance_eval do
#   def de_classe
#     puts 'método de_classe'
#   end
# end

# String.de_classe

# # a definição acima equivale a esta
# def String.de_classe2
#   puts 'método de_classe 2'
# end

# String.de_classe2

# puts '----------------------------------------------------'
# # mais uma forma definindo método de classe para a classe String
# class << String
#   def ola
#     puts 'olá'
#   end
# end

# String.ola

puts '----------------------------------------------------'

module AtributosDinamicos
  def atributo attr
    class_eval %{
      def #{attr}
        @#{attr}
      end

      def #{attr}= value
        @#{attr} = value
      end
    }
  end
end

class Teste3
  extend AtributosDinamicos
  atributo :nome
end

teste3 = Teste3.new
teste3.nome = 'roger'
puts teste3.nome
