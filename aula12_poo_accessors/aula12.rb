# accessors

# gets e sets
class Carro
    # cria automáticamente os métodos get e set e a variável nome
    attr_accessor :cor, :pneu, :painel
    # dá acesso apenas de leitura | método get
    attr_reader :nome
    # permite mudar o valor de atributo | método set
    attr_writer :porta
end

carro = Carro.new
# carro.nome = 'Gol' | método set não foi definido
puts carro.nome
carro.porta = 4
# puts carro.porta | método get não foi definido


# o attr_accessor executa um código semelhante a este:
# def attr_accessor(*args)
#     args.each do |propriedade|
#         eval ("
#             def #{propriedade}=(value)
#                 @#{propriedade} = value
#             end

#             def #{propriedade}
#                 @#{propriedade}
#             end
#         ")
#     end
# end