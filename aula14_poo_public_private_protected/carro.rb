class Carro
    def initialize(nome = "Modelo padrão")
        @nome = nome
    end

    attr_accessor :nome, :porta, :painel, :roda
    attr_reader :pneu
    
    def mostrar(marca = "Marca padrão")
        puts "Marca: #{marca} - Modelo: #{self.nome}"
        puts algo_mais
    end

    # private dá acesso apenas na própria classe
    # para acessa-lo é necessário um método público interno da classe que o acesse
    private
    def algo_mais
        "este é um método privado"
    end
end
