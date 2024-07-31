# tipo especial imutável de de objetos 
nome = :cassio
puts nome.class
puts "object_id = #{nome.object_id}"

puts "-" * 30

# por ser imutavel, não cria outro objeto na memória
nome = :cassio
puts nome.class
puts "object_id = #{nome.object_id}"

puts "-" * 30

# string cria outro objeto na memória
nome = "cassio"
puts nome.class
puts "object_id = #{nome.object_id}"

puts "-" * 30

nome = "cassio"
puts nome.class
puts "object_id = #{nome.object_id}"

puts "-" * 30

nome1 = :cassio
puts nome1.class
puts "object_id = #{nome1.object_id}"

puts "-" * 30

# se o valor do símbolo for diferente independente do nome da variável ser igual
# outro objeto será alocada na memória
nome1 = :roger
puts nome1.class
puts "object_id = #{nome1.object_id}"