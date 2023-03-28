class Fiesta < Carro
    attr_accessor :cor

    def mostrar_privado
        algo_mais
        # Fiesta.new.algo_mais # causa erro por ser outra insância
    end
end