require "./entities/account"

class Main 
    def initialize
        
        puts "Enter account details"
        print "Account number: "
        number = gets.chomp.to_i
        print "Account holder: "
        holder = gets.chomp
        print "Do you want to make an initial deposit ( y | n )? "
        response = gets.chomp

        if response[0] == 'y' || response[0] == 'Y'
            print "What amount to deposit? "
            amount = gets.chomp.to_i
            acc1 = Account.new(number, holder, amount)
        else
            acc1 = Account.new(number, holder)
        end

        puts "-" * 100
        acc1.account_data
    end
end

Main.new