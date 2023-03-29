class Golf < Carro
    # no Ruby sobrescrever um método é apenas redefini-lo na subclasse.
    def mostrar
        # uso da palavra super neste caso está chamando o método original
        super
        puts "este é o método mostrar da classe golf"
    end
end