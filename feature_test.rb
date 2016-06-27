require './lib/bank.rb'

account = Account.new
account.deposit(10000)
account.withdraw(5000)
account.print_statement
