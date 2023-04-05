# metaprogramming dinâmicos
module Aula19
  class ExemplosAula19
    # # lambda não aceita menos pâmetros do que os definidos
    # # lambda aceita mais parâmetros que os definidos
    # l = lambda {|parametro| parametro * 5}
    # puts l.call 5

    # l = lambda do |p1, p2|
    #   p1 + p2
    # end

    # puts l.call 5, 5

    # puts '####################################################################'
    # # proc permite menos parâmetros que os definidos
    # # proc não obriga a passar parâmetros mas pode causar erros. ex em multiplicações 5 x nil.
    # l = proc do |parametro|
    #   parametro = 0 if parametro.nil?
    #   parametro * 5
    # end

    # puts l.call

    # # definindo um método que recebe uma proc
    # # & significa que o método está recebendo uma proc
    # def metodo(&bloco)
    #   bloco
    # end

    # l = metodo do
    #   puts 'Cassio'
    # end

    # l.call

    # l = metodo do |parametro|
    #   puts parametro * 10
    # end

    # # proc aceita mais parãmetros que o definido mas so utiliza o necessário.
    # l.call 5, 5, 5, 1000

    # puts '####################################################################'
    # # eval serve para criar métodos dinâmicos
    # atr = 'nome_do_método'
    # eval("
    #   def #{atr}(value)
    #     @#{atr} = value
    #   end
    # ")

    # eval("
    #   def mostra
    #     @#{atr}
    #   end
    # ")

    # nome_do_método 'nome_novo'
    # puts mostra

    # puts '####################################################################'
    # # define method
    # # define um método dinâmicamente
    # class Teste
    #   def self.definir(nome_do_metodo)
    #     define_method(nome_do_metodo) do |parametro1, parametro2|
    #       puts "#{parametro1} - #{parametro2}"
    #     end
    #   end
    # end
    # # o códico acima executa o mesmo que este abaixo porém este é estático
    # # def metodo(parametro1, parametro2)
    # #   puts "#{parametro1} - #{parametro2}"
    # # end

    # Teste.definir('novo_metodo1')
    # Teste.definir('novo_metodo2')
    # Teste.definir('novo_metodo3')
    # Teste.definir('novo_metodo4')

    # Teste.new.novo_metodo1 'Cassio', 'Santana'
    # Teste.new.novo_metodo2 'Cassio', 'Santana'
    # Teste.new.novo_metodo3 'Cassio', 'Santana'
    # Teste.new.novo_metodo4 'Cassio', 'Santana'

    # puts '####################################################################'
    # # definindo métodos set com base em um array
    # # esta forma será melhorada para ser aind mais genérica no próximo exemplo
    # class Teste
    #   def self.criar_metodo(nome_do_metodo)
    #     define_method(nome_do_metodo) do |parametro|
    #       puts parametro
    #     end
    #   end
    # end

    # ['set_nome', 'set_email', 'set_endereco'].each do |nome_do_metodo|
    #   Teste.criar_metodo nome_do_metodo
    # end

    # Teste.new.set_nome 'Cassio'
    # Teste.new.set_email 'cassio@gmail.com'
    # Teste.new.set_endereco 'Rua Ruby de Deus'

    # puts '####################################################################'
    # # forma semelhante de como os attr_accessor foram definidos
    # module AtributosDinamicos
    #   def atributos(*atributos)
    #     atributos.each do |atributo|
    #       # definindo um método set
    #       define_method("#{atributo}=") do |value|
    #         instance_variable_set "@#{atributo}", value
    #       end

    #       # definindo um método get
    #       define_method("#{atributo}") do
    #         instance_variable_get "@#{atributo}"
    #       end
    #     end
    #   end
    # end

    # # caso a necessidade seja de apenas um dos método por exemplo
    # # apenas o get basta apagar o define_method que o define

    # class Teste
    #   extend AtributosDinamicos
    #   atributos :nome, :email
    #   # attr_accessor :nome, :email
    # end

    # t = Teste.new
    # t.nome = 'Roger'
    # t.email = 'roger@gmail.com'
    # puts t.nome
    # puts t.email
  end
end
