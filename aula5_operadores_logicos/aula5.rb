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

# <=>
# se o primeiro valor for maior retorna 1
# se o primeiro valor for igual retorna 0
# se o primeiro valor for menor retorna -1
puts 200 <=> 1
puts 200 <=> 200
puts 200 <=> 1000 

# operadores comuns
puts 1 < 2
puts 1 > 2
puts 1 == 2
puts 1 <= 2
puts 1 >= 2