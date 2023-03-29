class Abstrata
    def initialize
        raise "classe não pode ser instanciada somente herdada, classe abstrata"
    end

    def test_1
        raise "método para ser implementado 1"
    end

    def test_2
        puts "teste 2"
    end
end