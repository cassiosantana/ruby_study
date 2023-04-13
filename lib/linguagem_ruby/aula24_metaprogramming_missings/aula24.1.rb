# frozen_string_literal: true

# Classe para teste 1
class ClasseTeste1
  def self.const_missing(nome)
    "Constante #{nome} não existe"
  end
end

# Classe para teste 2
class ClasseTeste2
  def self.method_missing(nome)
    "Método de classe #{nome} não existe"
  end
end

# Classe para teste 3
class ClasseTeste3
  def method_missing(nome)
    "Método de instância #{nome} não existe"
  end
end

# Classe para teste 4
class ClasseTeste4
  def method_missing(nome)
    File.open('lib/linguagem_ruby/aula24_metaprogramming_missings/Cassio.csv') do |arquivo|
      arquivo.each do |linha|
        campos = linha.split(';')
        return "Campo #{nome} não existe" unless campos.include?(nome.to_s)
      end
    end
    'Campo existe'
  end
end
