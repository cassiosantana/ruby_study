require "./entities/account"
require "./entities/savings_account"
require "./entities/current_account"
require "./util/account_creator"
require "./util/account_validator"

class Main 
    def initialize
        print "What type of account do you want to open? ( c | s ) "
        account_type = gets.chomp
        # aguardando implementação
        # AccountValidator.validate_account_type(account_type)

        puts "Enter account details"
        print "Account number: "
        number = gets.chomp.to_i

        print "Account holder: "
        holder = gets.chomp

        print "\nDo you want to make an initial deposit? ( y | n ) "
        response = gets.chomp

        account = nil
        if response[0] == 'y' || response[0] == 'Y'
            print "What amount to deposit? "
            amount = gets.chomp.to_i
            account = AccountCreator.instantiate_account(account_type, number, holder, amount)
        else
            account = AccountCreator.instantiate_account(account_type, number, holder)
        end

        puts "Account data: #{account.account_data}"
        puts "-" * 100
        
        print "Do you want to make a withdraw? ( y | n ) "
        response = gets.chomp
        if response[0] == 'y' || response[0] == 'Y'
            print "Amount you want to withdraw? "
            amount = gets.chomp.to_i
            account.withdraw(amount)
            puts account.class
            # bug no calculo do saldo
            puts "Updated account data: #{account.account_data}"
        else
            puts "Account data: #{account.account_data}"
        end

        puts "-" * 100

    end
end

Main.new