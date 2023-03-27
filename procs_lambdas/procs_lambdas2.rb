def adiciona_numero(numero)
    return Proc.new {|x| x + numero}
end

class TestaProcs
    @@cubo = proc {|x| x ** 3}

    def teste
        p @@cubo.call(5)
        soma = adiciona_numero(20)
        p soma.call(10)
    end

    def testa_argumento prc
        p prc.call 4
    end
end

obj = TestaProcs.new
obj.teste
obj.testa_argumento -> x {x + 5}
