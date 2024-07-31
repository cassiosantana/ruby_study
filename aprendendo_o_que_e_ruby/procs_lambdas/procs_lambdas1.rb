# formas de declarar uma proc
t1 = Proc.new {'bloco 1'}
t2 = proc {'bloco 2'}
t3 = lambda {'bloco 3'}

# execuções simples
t4 = Proc.new {|x| x * 2}
puts t4.call(10)

t5 = proc {|x| x + 30}
puts t5.call(20)

t6 = lambda {|x| x / 2.0}
puts t6.call(30) 

t6 = -> x {x * 10}
puts t6.call(7)
puts t6.class

puts '-' * 30

def rep_a(n)
	n.times {yield} if block_given?
end

rep_a(2) { puts "Teste 1"}

def rep_b(n, &block)
	n.times {block.call} if block
    p block.class
end

rep_b(2) { puts "Teste 2"}

puts '-' * 30

imprimir_nome = lambda {puts "Cassio"}
def rep_c(n, block)
    n.times{block.call} if block
    p block.class
end

rep_c(2, imprimir_nome)

puts '-' * 30

def rep_c(n, block)
    n.times{block.call} if block
    p block.class
end

rep_c(2, proc {puts "Roger"})

puts '-' * 30

valor = 100.0
meu_proc = proc {|x| x * 3}

def test_proc(number, block)
    puts block.call(number)
    puts block.class
end

test_proc(valor, meu_proc)

puts '-' * 30

#closures | quando um método interno consegue enxergar e interagir com variáveis do método externo
def soma(*args)
    s = 0
    args.each do |num|
        s += num
    end
    s
end

puts "Resultado da soma: #{soma 1, 2, 3}"

# diferença lambda e proc em argumentos
teste_proc1 = Proc.new {|a, b, c| a + b + c}
teste_proc2 = proc {|a, b, c| a + b + c}
teste_lambda = lambda {|a, b, c| a + b + c}

puts '-' * 50

puts "Número correto de argumentos { 3 argumentos }"
puts "teste_proc1 => #{teste_proc1.call(1, 2, 3)}"
puts "teste_proc2 => #{teste_proc2.call(1, 2, 3)}"
puts "teste_lambda => #{teste_lambda.call(1, 2, 3)}"

# # menos argumentos para a proc gera um erro
# # deduz que o terceiro argumento é nulo e não pode ser convertido para Integer
# puts "Número inferior de argumentos { 2 argumentos }"
# puts "teste_proc1 => #{teste_proc1.call(1, 2)}"
# puts "teste_proc2 => #{teste_proc2.call(1, 2)}"
# puts "teste_lambda => #{teste_lambda.call(1, 2)}"

# # mais argumentos para o lambda gera um erro
# # a proc descarta o argumento a mais
# # o lambda gera um erro de excesso de argumentos
# puts "Número superior de argumentos { 3 argumentos }"
# puts "teste_proc1 => #{teste_proc1.call(1, 2, 3, 4)}"
# puts "teste_proc2 => #{teste_proc2.call(1, 2, 3, 4)}"
# puts "teste_lambda => #{teste_lambda.call(1, 2, 3, 4)}"

puts '-' * 50

# processamento do método não é cortado pelo return do lambda
def metodo1
	_lambda = lambda {return "Resposta de um lambda"}
	_lambda.call
	return "Resposta do método"
end	

puts metodo1
	
# processamento do método é cordato pelo return da proc como um break 
# def metodo2
# 	_proc = proc {return "Resposta de uma proc"}
# 	_proc.call
# 	return "Resposta do método"
# end

# puts metodo2