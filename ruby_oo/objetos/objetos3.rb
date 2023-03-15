class Pessoa
    # construtor da classe
    def initialize(nome)
        # @ garante que a variável esteja disponível para todos os métodos da classe durante seu ciclo de vida.
        @nome = nome
    end

    # método para retornar a variavel @nome
    def nome
        @nome
    end

    # método para atribuir um novo valor a variável nome
    def nome=(novo_nome)
        @nome = novo_nome
    end
end