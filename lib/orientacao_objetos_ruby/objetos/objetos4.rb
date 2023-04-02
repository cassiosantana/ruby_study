# attr_accessor :nome | equivalente os métodos getter e setter
# attr_reader | equivalente ao getter
# attr_writter | equivalente so setter

class Pessoa
    attr_accessor :nome
    def initialize(nome)
        @nome = nome
    end
end

pessoa = Pessoa.new("Cassio")
p pessoa
p pessoa.nome

pessoa.nome = "Roger"
p pessoa
p pessoa.nome
