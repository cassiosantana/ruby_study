class Golf < Carro
    # no Ruby sobrescrever um método é apenas redefini-lo na subclasse.
    def mostrar
        # uso da palavra super neste caso está chamando o método original
        super
        puts "este é o método mostrar da classe golf"
    end

    # no ruby não existe overload(sobrecarga de métodos) como no java.
    # se um método for definido duas vezes o primeiro é ignorado.
    def andar p1, p2, p3
        puts "andar com parâmetros"
    end

    def andar
        puts "andar sem parâmetros"
    end
end