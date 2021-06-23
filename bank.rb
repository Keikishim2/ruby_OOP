class BankAccount
    attr_accessor :checking, :savings

    @@num_of_acc = 0
    @@interest_rate = 0.01

    def initialize
        @checking = 0
        @savings = 0
        @@num_of_acc += 1
        puts "Created #{@@num_of_acc} Accounts"
    end
    def account
        puts "Acct #: #{bank_acc}"
        puts "Acct Total: #{total}"
        puts "Check Total: #{check_acc}"
        puts "Total Savings: #{savings_acc}"
        puts "Interest Rate %: #{@@interest_rate}"

    end
    private
    def bank_acc
        return @acc_num = rand(1000000..9999999)
    end
    def check_acc
        return @checking
        self
    end
    def savings_acc
        return @savings
        self
    end
    def deposit(acc, result)
        if acc == 'checking'
            @checking += result
        elsif acc == 'savings'
            @savings += result
        end
        self
    end
    def withdraw(acc, result)
        if acc == 'checking'
            @checking -= result
            check_acc
        elsif acc =='savings'
            @savings -= result
            savings_acc
        end
        self
    end
    def total
        return @checking + @savings
        self
    end
end