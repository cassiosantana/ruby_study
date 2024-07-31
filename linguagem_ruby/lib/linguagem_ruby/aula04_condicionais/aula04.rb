require 'byebug'

# debugger

# if
a = 1
if a == 1
    puts 'a == 1'
end

if a == 1 then puts 'a == 1' end

if a == 2
    puts 'a == 2'
else
    puts 'a não é igual a 2'
end

if a == 2
    puts 'a == 2'
elsif a == 3
    puts 'a == 3'
else
    puts 'o a não é igual a 2 nem a 3'
end

puts "o a vale #{a}" if a == 1

# case | mais performático pois ele não testa cada condição, vai direto a condição correta
case a
    when 2
        puts 'a == 2'
    when 3
        puts 'a == 3'
    else
        puts 'o a não é igual a 2 nem a 3'
end

# unless | o inverso do if
unless a == 2
    puts 'o a é diferente de 1'
end

puts 'o a é diferente de 1' unless a == 2

# ternário
b = a == 1 ? 'é igual a 1' : 'não é igual a 1'
puts b