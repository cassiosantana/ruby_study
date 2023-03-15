class Account
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
        raise "Insufficient account balance" if balance < amount
        @balance -= amount
    end

    def account_data
        "Account number: #{number}, Holder: #{holder}, Balance: %.2f" % balance
    end
end
