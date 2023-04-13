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
