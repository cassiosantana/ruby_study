# o ampersand '&' é o operador de navegação segura

# chama o método `.profile` na variável `user` apenas se user não for nula
# @user&.profile

# o código acima é equivalente a este
# unless @user.nil?
#   @user.profile
# end


# no caso dos procs ele converte procs em bloco e o inverso.
# abaixo ele interpretou o simbolo :upcase como um bloco parãmetro para o map.
puts ['cassio', 'roger', 'santana'].map{|nome| nome.upcase}

puts "-----------------------------------------------------------------------------"

puts ['cassio', 'roger', 'santana'].map(&:upcase)