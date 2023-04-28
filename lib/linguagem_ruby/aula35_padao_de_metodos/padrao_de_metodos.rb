# Em ruby temos 3 padrões de métodos. Com ponto de interrogação, com bang(!) e sem nada.

# Método que tem interrogação para método que dão a entender que apenas respondem a uma
# pergunta com um booleano e não fazem uma interação com o objeto:
(200..300).include?(303)

# Métodos sem interrrogação ou bang executam uma interação com o objeto e retornam algum
# elemento(true, false ou o próprio objeto, variável, etc..).
#
# No caso do método save ele tenta salvar no banco de dados e retorna true ou false e no
# caso do false ainda cria uma variável de erro para que possamos verificar o que ocorreu.
produto.save

# Outro exemplo de método sem bang ou interrogação seria um método get. Ele causa a ideia
# de que ele irá retornar, provavelmente, o próprio objeto.
meu produto = produto.get

# Métodos com o bang fazem uma ação atualizando sua referência, por exemplo, retorna NADA
# e no caso de erro damos um raise. ( É um método que é considerado VOID).
produto.save!
# > validation failed: Nome can't be blank

# Resumo:
#   - bang: Atualiza a referência e se erro causa um raise;
# - sem nada: retorna algum elemento;
# - interrogação: retorna booleano.