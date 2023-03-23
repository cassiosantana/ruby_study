# operadores lógicos
require 'byebug'

# onde utilizar
# em condicionais
# ex. if, unless, while ...

a = 1
b = 2
c = 4

if 1==1 or 2==2
    puts 'entrou no if'
end

unless b==1 && a==3
    puts 'mostrou unless 1'
end

unless b==1 and a==3
    puts 'mostrou unless 1'
end

while a <= b or b > c
    puts 'olá'
    a += 1
end

# eql?
puts 24.eql?(12*2)