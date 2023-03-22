require 'byebug'

debugger

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
