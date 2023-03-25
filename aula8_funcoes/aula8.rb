# funções

# declaração básica
def teste
    puts 'teste'
end

teste

# return é opcional | caso não seja declarado a função retorna a ultima linha
def teste_2
    return puts 'teste 2'
end

teste_2

# formas de passagem de parâmetros
def teste_3 (numero)
    puts numero
end

teste_3 (4)

def teste_4 numero
    puts numero
end

teste_4 5

# definir um valor padrão para um parâmetro par acaso a função não receba um.
def teste_5 (numero=0)
    puts numero
end

teste_5 100
teste_5