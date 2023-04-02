# este método é refatorado mais abaixo utilizando .reverse da classe String
def palindromo?(palavra)
    palavra = palavra.downcase
    palavra_invertida = ""

    indice = palavra.length
    until indice == 0
        palavra_invertida << palavra[indice - 1]
        indice -= 1
    end

    # não é necessário utilizar um if para verificar e mandar retornar true ou false
    palavra_invertida == palavra
end

puts palindromo?("cassio")
puts palindromo?("Ovo")
puts palindromo?("Ama")
puts palindromo?("Arara")

puts "-" * 50

# método da classe string que faz todo o esforço do altoritmo anterior.
puts "cassio".reverse

puts "-" * 50

# nova versão do método palindromo?
def palindromo2?(palavra)
    palavra.downcase == palavra.downcase.reverse
end

puts palindromo2?("cassio")
puts palindromo2?("Ovo")
puts palindromo2?("Ama")
puts palindromo2?("Arara")
