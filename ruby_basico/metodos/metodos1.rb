# palavra return é opcional. o ruby sempre retorna a ultima linha do método
def metodo1(a, b)
    a + b
end

puts metodo1(1, 2)
puts "-" * 30

def metodo2(a, b)
    return a + b
end

puts metodo2(10, 20)
puts "-" * 30

# é possivel estabelecer um valor padrão para um parâmetro para caso o método não o receba.
def soma(valor1, valor2 = 10)
    valor1 + valor2
end

puts soma(2) # o valor2 utiliza o padrão definido no método
puts soma(2, 50) # o valor2 predefinido é ignorado
puts "-" * 30

# definindo nomes para as variáveis é possivel passa-las em qualquer ordem para o método
def soma_com_parametros_nomeados(valor1: 0, valor2:)
    puts "Estou somando #{valor1} e #{valor2} = #{valor1 + valor2}"
end

puts soma_com_parametros_nomeados(valor2: 100, valor1: 200)
puts "-" * 30

# também é possivel trabalhar com nomes de variáveis que tem valor padrão
puts soma_com_parametros_nomeados(valor2: 100)