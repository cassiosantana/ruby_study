class Veiculo
    attr_accessor :fabricante, :cor
    def initialize(fabricante, cor)
        @fabricante = fabricante
        @cor = cor
    end

    def velocidade_maxima
        puts "Muito rapido!"
    end
end

class Moto < Veiculo
end

class Carro < Veiculo
end

moto = Moto.new("Honda", "Azul")
carro = Carro.new("Renault", "Branco")

p moto
p moto.fabricante
p moto.cor
moto.velocidade_maxima

puts "-" * 100
p carro
p carro.fabricante
p carro.cor
carro.velocidade_maxima