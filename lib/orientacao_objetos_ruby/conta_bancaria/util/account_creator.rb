require "./entities/savings_account"
require "./entities/current_account"

class AccountCreator
    def self.instantiate_account(account_type, number, holder, amount)
        if account_type[0] == 'c' || account_type[0] == 'C'
            CurrentAccount.new(number, holder, amount)
        else
            SavingsAccount.new(number, holder, amount)
        end     
    end
end