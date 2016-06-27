require 'account'

describe Account do

  subject(:my_account) { described_class.new }

    it "has a starting balance of zero" do
      my_account = Account.new
      expect(my_account.balance).to eq(0)
    end

    it "can start with a different balance" do
      my_account = Account.new(100)
      expect(my_account.balance).to eq(100)
    end

    it "will consider every change in the account balance as a new Operation" do
      my_account = Account.new
      my_account.deposit(100)
      expect(my_account.operations_log.empty?).to eq(false)
    end

  describe("#deposit") do
    it "can make deposits on it" do
      my_account = Account.new(100)
      expect(my_account.deposit(100)).to eq(200)
    end
  end

  describe("#withdraw") do
    it "can withdraw money from it" do
      my_account = Account.new(100)
      expect(my_account.withdraw(100)).to eq(0)
    end
  end

  describe("#operations_log") do
    it "can store operations" do
      my_account = Account.new
      expect(my_account.operations_log).to eq([])
    end
  end

  describe("#print_statement") do
    it "prints the operations log" do
      account = Account.new
      account.deposit(10000)
      account.withdraw(5000)
      expect { account.print_statement }.to output("\"date || credit || debit || balance\"\n\"27-06-2016 || 10000 || 10000\"\n\"27-06-2016 || 5000 || 5000\"\n").to_stdout
    end
  end
end
