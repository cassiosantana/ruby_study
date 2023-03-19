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


def rep_a(n)
	n.times {yield} if block_given?
end

rep_a(2) { puts "Teste 1"}

def rep_b(n, &block)
	n.times {block.call} if block
    p block.class
end

rep_b(2) { puts "Teste 2"}

