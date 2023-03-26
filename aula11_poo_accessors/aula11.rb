# accessors

# gets e sets
class Carro
    # cria automáticamente os métodos get e set e a variável nome
    attr_accessor :cor, :pneu, :porta, :painel
    # dá acesso apenas de leitura | método get
    attr_reader :nome
end

carro = Carro.new
# carro.nome = 'Gol' | método set não foi definido
puts carro.nome


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