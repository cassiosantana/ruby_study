class Pessoa
end

# cada instância tem seu endereço sepadado na memória.
pessoa1 = Pessoa.new
pessoa2 = Pessoa.new

puts "pessoa 1 #{pessoa1}"
puts "pessoa 2 #{pessoa2}"

# fazendo uma variável receber o endereço de outra na memória
pessoa1 = pessoa2
puts "pessoa 1 #{pessoa1}"