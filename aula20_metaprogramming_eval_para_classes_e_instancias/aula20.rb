# metaprogramming_eval_para_classes_e_instancias
require 'byebug'

a = "puts 'Cassio'"
# debugger
eval(a)
puts a

a = "puts 1 + 2"
eval(a)
puts a

puts '----------------------------------------------------'
class Teste
  def initialize
    @nome = 'Roger'
  end

  private

  def metodo_privado
    @nome
  end
end

# Obtendo valores de atributos privados com eval
# lembrando que variáveis de classe não são expostas
# fora da classe.
teste = Teste.new
teste.instance_eval{puts @nome}
teste.instance_eval{puts metodo_privado}

puts '----------------------------------------------------'
# definindo métodos para uma instância em tempo de execução
teste.instance_eval do
  def metodo_1
    puts 'variavel 1'
  end
  def metodo_2
    puts 'variavel 2'
  end
end

teste.metodo_1
teste.metodo_2

# a prova de que os métodos foram definidos apenas para a instância teste
# é que outras intâncias da mesma classe causam erro justamente por estes
# métodos estarem indefinidos.
teste2 = Teste.new
# teste2.metodo_1 # undefined method `metodo_1'
# teste2.metodo_2 # undefined method `metodo_2'