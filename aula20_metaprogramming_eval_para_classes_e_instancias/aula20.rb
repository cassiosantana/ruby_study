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