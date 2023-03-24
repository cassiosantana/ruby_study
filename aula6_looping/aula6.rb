# looping
require 'byebug'

# while
top = 4
now = 0
while now < top
    puts "while #{now} .. #{top}"
    now += 1
end

puts "----------------------------------------"

# while em uma linha
top = 4
now = 0
# puts "while #{now += 1} .. #{top}" while now < top
puts "while #{now += 1} .. #{top}" while now < top

puts "----------------------------------------"

# until
top = 4
now = 0
puts "until #{now += 1} .. #{top}" until now >= top