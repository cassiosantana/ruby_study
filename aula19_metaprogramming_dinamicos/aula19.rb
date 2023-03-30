# metaprogramming dinâmicos

# lambda não aceita menos pâmetros do que os definidos
# lambda aceita mais parâmetros que os definidos
l = lambda {|parametro| parametro * 5}
puts l.call 5

l = lambda do |p1, p2|
  p1 + p2
end

puts l.call 5, 5

puts '####################################################################'
# proc permite menos parâmetros que os definidos
# proc não obriga a passar parâmetros mas pode causar erros. ex em multiplicações 5 x nil.
l = proc do |parametro|
  parametro = 0 if parametro.nil?
  parametro * 5
end

puts l.call

# definindo um método que recebe uma proc
# & significa que o método está recebendo uma proc
def metodo(&bloco)
  bloco
end

l = metodo do
  puts 'Cassio'
end

l.call

l = metodo do |parametro|
  puts parametro * 10
end

# proc aceita mais parãmetros que o definido mas so utiliza o necessário.
l.call 5, 5, 5, 1000
