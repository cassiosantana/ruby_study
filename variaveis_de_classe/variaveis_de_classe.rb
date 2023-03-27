class Pessoa
    # variáveis de classes estão relacionadas aos métodos self que também são
    # eles conseguem acessar e modificar estas variáveis
    @@nome = "cassio"
    @@email = "cassio@gmail.com"

    attr_accessor :endereco
    def initialize
        @endereco = "tv vista alegre"
    end

    def self.imprimir
        puts @@nome
        puts @@email
        # método de classe não acessa variáveis de instância
        # puts @endereco
    end

    def imprimir2
        puts "-" * 50
        puts @@nome
        puts @@email
        puts @endereco
    end
end

Pessoa.imprimir

pessoa = Pessoa.new
pessoa.imprimir2
p pessoa.endereco
