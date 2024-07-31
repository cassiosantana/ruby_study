puts 42.class
puts 42.42.class
puts 14_500
puts 13_500.class
puts 13.500.integer?
puts 13_500.integer?
puts 5.public_methods
puts 5.positive?
puts 5.negative?
puts 5.send("*", 10)
puts 5.odd?
puts 4.even?
puts 5.even?

puts 5 + 10.5
numero1 = 5
puts numero1.nil?
puts 5.nil?
puts 0.nil?

puts 5.hash
puts 5.class
puts 5.object_id
puts 5.nil?.object_id
puts 5.object_id
puts 5.object_id.object_id
puts 5.odd?.object_id
puts 7.odd?.object_id
puts 7.odd?
puts true.object_id

puts 5.eql?(10)
puts 5.eql?(5)
puts 5.finite?
numero = 5
puts numero.nil?

puts 5.class
puts 5.object_id
puts 5.4.class
puts 15_500
puts 1_500_000.0
numero = 1_500_000.0 # even? e odd? não testam o tipo float
numero2 = 1_500_000
texto = "1_500_000.0"
# puts numero + texto | não é possivel converter
puts numero2.even?
puts numero2.odd?