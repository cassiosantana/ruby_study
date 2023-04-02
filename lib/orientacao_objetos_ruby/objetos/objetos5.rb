class Conta
    attr_reader :numero
    attr_accessor :titular, :email, :saldo
    def initialize(numero, titular, email, saldo=0.0)
        @numero = numero
        @titular = titular
        @email = email
        @saldo = saldo
    end

    def deposito=(valor)
        @saldo += valor
    end

    def saque=(valor)
        @saldo -= valor + 5.0
    end
end

conta1 = Conta.new(1111, "Cassio Santana", "cassio@gmail.com")
p conta1

conta1.deposito = 1_500.0
p conta1

conta1.saque = 500.0
p conta1

# conta1.numero = 2222 | inacessível
conta1.titular = "Roger Santana"
conta1.email = "roger@gmail.com"

p conta1.numero
p conta1.titular
p conta1.email
p conta1.saldo


        