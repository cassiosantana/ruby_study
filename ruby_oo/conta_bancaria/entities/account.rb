class Account
    @@tax = 0.0

    attr_reader :number
    attr_accessor :holder, :balance
    def initialize(number, holder, amount=0.0)
        @number = number
        @holder = holder
        @balance = deposit(amount)
    end

    def deposit(amount)
        @balance =+ amount
    end

    def withdraw(amount)
        raise "Insufficient account balance" if balance < amount + @@tax
        @balance -= amount + @@tax
    end

    def account_data
        "Account number: #{number}, Holder: #{holder}, Balance: %.2f" % balance
    end
end
