# metaprogramming_eval_para_classes_e_instancias
require 'byebug'

a = "puts 'Cassio'"
# debugger
eval(a)
puts a

a = "puts 1 + 2"
eval(a)
puts a

