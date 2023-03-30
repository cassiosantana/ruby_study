# metaprogramming dinâmicos

# lambda não aceita menos pâmetros do que os definidos
# lambda aceita mais parâmetros que os definidos
l = lambda {|parametro| parametro * 5}
puts l.call 5

l = lambda do |p1, p2|
  p1 + p2
end

puts l.call 5, 5
