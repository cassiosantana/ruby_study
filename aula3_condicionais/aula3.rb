require 'byebug'

debugger

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

# case
case a
    when 2
        puts 'a == 2'
    when 3
        puts 'a == 3'
    else
        puts 'o a não é igual a 2 nem a 3'
end