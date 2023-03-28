# funções recursivas
def funcao_1 i = 1
    puts "Implementar o dado para buscar da API #{i}"
    return if i == 5
    funcao_1 i + 1
end

funcao_1

# um exemplo de uso para recursividade de métodos é quando desejamos
# ler dados de algum arquivo para apresentar por exemplo dados de um
# usuário e não sabemos a quantidade de usuários teremos no futuro
# desta forma a função é implementada apenas uma vez e servirá para
# toda a vida do programa a não ser que alguma regra mude.
# lembrando que é necessário ter uma válvula de escape, que no caso
# acima é o return.