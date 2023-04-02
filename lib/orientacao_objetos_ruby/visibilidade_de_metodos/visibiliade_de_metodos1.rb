class Methods
    def m1 
        puts 'metodo 1 public'
        m2
        m3
        puts '-' * 30
    end

    protected

    def m2
        puts 'metodo 2 protected'
    end

    private

    def m3
        puts 'metodo 3 private'
    end
end

class Program < Methods
    def initialize
        metodo_program
    end

    def metodo_program
        program = Methods.new
        program.m1 # método public
        program.m2 # método protected | acessível por Program ser subclasse de Methods
        # método private
        # program.m3
    end
end


Program.new