require 'byebug'

# debugger

# verificando o tipo
puts 1.class
puts 1.class.superclass
puts 1.class.superclass.superclass
puts 1.class.superclass.superclass.superclass
p 1.class.superclass.superclass.superclass.superclass

h = {}
puts "Stringy string McString!".class
puts 1.class
puts 1.class.superclass
puts 1.class.superclass.superclass
puts 4.3.class
puts 4.3.class.superclass
puts nil.class
puts h.class
puts :symbol.class
puts [].class
puts (1..8).class

# obs
# o ruby é uma linguagem dinâmica mas é fortemente tipado
# 'a' + 1 não é permitido no ruby justamente por ser fortemente tipado
puts 'a' + 1.to_s

# tipos de variáveis

# # variável comum
a = 1
puts a

# # variavel de instância
class Classe1
    # variável de classe precisa ser inicializada com a instância para poder ser enchergada
    def initialize
        @a = 2
    end
    def print_a
        puts @a
    end
end

Classe1.new.print_a

# variável de classe
class Classe2
    # variável de classe não precisa ser inicializada para ser enchergada
    @@a = 3
    def imp_a
        puts @@a
    end
end

Classe2.new.imp_a

# variável global
$a = 4
puts $a

# constante
A = 5
puts A