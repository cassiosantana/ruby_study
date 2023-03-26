# funções recursivas
def funcao_1 i = 1
    puts "Implementar o dado para buscar da API #{i}"
    return if i == 5
    funcao_1 i + 1
end

funcao_1