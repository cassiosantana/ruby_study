class Fiesta < Carro
    attr_accessor :cor

    def mostrar_privado
        algo_mais
        # Fiesta.new.algo_mais # causa erro por ser outra insância
    end

    def mostrar_protegido
        # algo_mais_protegido
        Fiesta.new.algo_mais_protegido # funciona mesmo sendo outra instância protected
    end
end