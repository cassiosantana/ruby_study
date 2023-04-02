# atribuir valor a variável condicionalmente

# atribuir valor se a variável se estiver vazia.
# no ruby o nil é representado pelo if como false
variavel_1 = nil
variavel_1 = "Algum primeiro valor" if variavel_1.nil?
puts variavel_1

# outra forma
# se uma varivável contém valor, apenas a declarando como condição o ruby a entende como true
# se negar-mos a variável no if é o mesmo que dizer que a condição é ela estar nula.
variavel_2 = nil
variavel_2 = "Algum segundo valor" if !variavel_2
puts variavel_2

# outra forma mais semântica de fazer o mesmo
# unless executa quando o valor for falso
# para o unless a consição falsa é a variável estar com o valor nil
variavel_3 = nil
variavel_3 = "Algum terceiro valor" unless variavel_3
puts variavel_3

# o ruby tem uma sintaxe mais adequada para executar este tipo de atribuição
variavel_4 = nil
variavel_4 ||= "Algum quarto valor"
puts variavel_4

# além de atribuir condicionalmente o valor, inicia uma objeto caso não instanciado
variavel_5 ||= 4
p variavel_5
p variavel_5.class