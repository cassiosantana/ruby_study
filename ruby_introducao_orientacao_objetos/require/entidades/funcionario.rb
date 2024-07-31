class Funcionario
    attr_accessor :nome, :email, :salario_base, :contrato
    def initialize(nome, email, salario_base, contrato)
        @nome = nome
        @email = email
        @salario_base = salario_base
        @contrato = contrato
    end

    def salario_total
        salario_base + contrato.valor
    end
end