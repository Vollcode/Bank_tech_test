require_relative 'operation'

class Account
  attr :balance, :operations_log

  def initialize(balance=0)
    @balance = balance
    @operations_log = []
  end

  def deposit(amount)
    @balance += amount
    @operations_log << Operation.new(amount, @balance)
    @balance
  end

  def withdraw(quantity)
    @balance -= quantity
    @operations_log << Operation.new(quantity, @balance)
    @balance
  end

  def print_statement
    p "date || credit || debit || balance"
     @operations_log.each{|operation| p operation.arguments.join(" || ") }
  end
end
