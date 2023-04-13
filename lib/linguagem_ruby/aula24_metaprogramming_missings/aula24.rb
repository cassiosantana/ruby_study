# frozen_string_literal: true

# módulo aula 24
module Aula24
end

# # sobrescrevendo método da classe Module do Ruby
# class Module
  # const_missing é um método que retorna um erro
  # caso uma constante não exista.
  # aqui estamos o sobrescrevendo para que tenha
  # o comportamento que desejamos.
#   def const_missing(nome)
#     puts "Classe #{nome} não encontrada"
#   end
# end

# Cassio

# # Cria classe caso não exista
# class Module
#   def const_missing(nome)
#     existe = File.exist?("lib/linguagem_ruby/aula24_metaprogramming_missings/#{nome}.csv")
#     unless existe
#       puts "Classe #{nome} não encontrada"
#     end
#     const_set(nome, Class.new) # retorna a classe
#   end
# end

# Roger

# # Não entendi este código.
# class Module
#   old_const_missing = instance_method(:const_missing)
#   define_method(:const_missing) do |nome|
#     existe = File.exist?("lib/linguagem_ruby/aula24_metaprogramming_missings/#{nome}.csv")
#     unless existe
#       puts "Classe #{nome} não encontrada"
#       return
#     end
#     old_const_missing.bind(self).call(nome)
#   end
# end
# Cassio

# Aqui o método const_missing foi sobrescrito de forma que ele executa diversas
# operações. Basicamente o código tenta ler um arquivo no diretório especificado e caso
# ele exista será criada uma classe com métodos baseados no conteúdo da primeira linha
# do arquivo lido desde que cada nome de método esteja separado por ';'.
class Module
  def const_missing(nome)
    existe = File.exist?("lib/linguagem_ruby/aula24_metaprogramming_missings/#{nome}.csv")
    unless existe
      puts "Classe #{nome} não encontrada"
      return
    end
    const_set(nome, Class.new)
    klass = const_get(nome)
    File.open("lib/linguagem_ruby/aula24_metaprogramming_missings/#{nome}.csv") do |arquivo|
      arquivo.each do |linha|
        campos = linha.split(";")

        campos.each do |campo|
          klass.class_eval do
            define_method("#{campo}=") do |valor|
              instance_variable_set "@#{campo}", valor
            end

            define_method("#{campo}") do
              instance_variable_get "@#{campo}"
            end
          end
        end
      end
    end
    klass
  end
end

c = Cassio.new
c.nome = 'Santana'
puts c.methods - Class.methods
