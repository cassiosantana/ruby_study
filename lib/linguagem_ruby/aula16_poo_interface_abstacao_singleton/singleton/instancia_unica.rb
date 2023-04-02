require 'singleton'

# no ruby basta fazer o load da biblioteca singleton
class InstanciaUnica
    # faz todo o código para deixar esta classe com instância única
    # cria um método de instância
    # deixa o contrutor privado etc...
    include Singleton

    def test_1
        puts "implementado 1"
    end

    def test_2
        puts "implementado 2"
    end
end