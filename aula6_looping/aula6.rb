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

puts "----------------------------------------"

# loop
index = 0
loop do
    puts index
    index += 1
    break if index == 5
end

puts "----------------------------------------"

# next
index = 0
loop do
    index += 1
    next if index == 3 or index == 8
    puts index
    break if index == 10
end