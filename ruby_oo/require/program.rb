require "./entidades/contrato"
require "./entidades/funcionario"

contrato1 = Contrato.new("Amazon", 1500.0)
funcionario1 = Funcionario.new("Cassio", "cassio@gmail.com", 5_000.0, contrato1)

p contrato1
p funcionario1
p funcionario1.salario_total