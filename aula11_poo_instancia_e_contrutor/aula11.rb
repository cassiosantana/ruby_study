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

# mudando valor de atributo
meu_carro.setar_nome = 'Sandeiro'
puts meu_carro.pegar_nome