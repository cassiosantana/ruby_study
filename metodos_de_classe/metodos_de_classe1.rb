# método dos de classe são aqueles que não dependem de instãncia de classe

class Cumprimento
    def self.dia
        puts "Bom dia!"
    end

    def self.tarde
        puts "Boa tarde!"
    end

    def self.noite
        puts "Boa noite!"
    end
end

# não é necessário instânciar um objeto
Cumprimento.dia
Cumprimento.tarde
Cumprimento.noite
