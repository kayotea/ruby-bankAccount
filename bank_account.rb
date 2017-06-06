class BankAccount
    @@num_accounts = 0
    def initialize check_bal=0, save_bal=0
        @account_num = generate_account_num
        @checking_balance = check_bal
        @saving_balance = save_bal
        @@num_accounts += 1
        @interest_rate = 0.01
    end
    def generate_account_num
        rand(1000..9000)
    end
    def return_account_num
        @account_num
    end
    def return_checking_account_balance
        @checking_balance
    end
    def return_saving_account_balance
        @saving_balance
    end
    def return_total_balance
        total = @saving_balance + @checking_balance
    end
    def deposit_checking deposit=0
        @checking_balance += deposit
        self
    end
    def withdraw_checking withdraw=0
        if withdraw > @checking_balance
            puts "Insufficient funds"
        else
            @checking_balance -= withdraw
        end
        self
    end
    def self.num_accounts
        @@num_accounts
    end
    def account_information
        print "Account number: "+return_account_num.to_s
        puts ""
        print "Total Balance: "+return_total_balance.to_s
        puts ""
        print "Checking Balance: "+return_checking_account_balance.to_s
        puts ""
        print "Saving Balance: "+return_saving_account_balance.to_s
        puts ""
        print "Interest Rate: "+@interest_rate.to_s
        puts ""
    end
end

# a1 = BankAccount.new 25, 101
# puts a1.return_account_num
# puts a1.return_checking_account_balance
# puts a1.return_saving_account_balance
# puts a1.deposit_checking(5).return_checking_account_balance
# puts a1.withdraw_checking(200).return_checking_account_balance
# print "Total: "
# puts a1.return_total_balance
# a2 = BankAccount.new
# print "Number of bank accounts: "
# puts BankAccount.num_accounts
# a2.account_information