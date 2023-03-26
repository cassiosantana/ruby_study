class Carro
    # construtor
    def initialize(nome)
        @nome = nome
    end

    # get
    def pegar_nome
        @nome
    end

    # set
    def setar_nome=(nome)
        @nome = nome
    end

end

# Instanciação
meu_carro = Carro.new('Gol')
