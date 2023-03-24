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

puts "----------------------------------------"

# times
5.times{|i| puts i}

5.times do |i|
    puts i
end

puts "----------------------------------------"

# for
for i in 0..15
    next if i % 2 == 0
    puts i
end

puts "----------------------------------------"

for i in 0..10
    puts i
end

puts "----------------------------------------"

for i in 0...10
    puts i
end

# each
(1..10).each {|i| puts i}

(1..10).each do |i|
    puts "teste #{i}"
end

puts "----------------------------------------"

# select
a = [0, 1, 2, 3, 4, 5].select {|numero| numero > 4}
puts a
