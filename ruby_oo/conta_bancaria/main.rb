require "./entities/account"

class Main 
    def initialize
        
        puts "Enter account details"
        print "Account number: "
        number = gets.chomp.to_i
        print "Account holder: "
        holder = gets.chomp
        print "\nDo you want to make an initial deposit? ( y | n ) "
        response = gets.chomp

        acc1 = nil
        if response[0] == 'y' || response[0] == 'Y'
            print "What amount to deposit? "
            amount = gets.chomp.to_i
            acc1 = Account.new(number, holder, amount)
        else
            acc1 = Account.new(number, holder)
        end

        puts "Account data: #{acc1.account_data}"
        puts "-" * 100
        
        print "Do you want to make a withdraw? ( y | n ) "
        response = gets.chomp
        if response[0] == 'y' || response[0] == 'Y'
            print "Amount you want to withdraw? "
            amount = gets.chomp.to_i
            acc1.withdraw(amount)
            puts "Updated account data: #{acc1.account_data}"
        else
            puts "Account data: #{acc1.account_data}"
        end

        puts "-" * 100

    end
end

Main.new