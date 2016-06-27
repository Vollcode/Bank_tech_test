class Operation
  attr :balance, :amount, :date, :arguments

  def initialize(amount, balance)
    @date = (Time.new).strftime("%d-%m-%Y")
    @amount = amount
    @balance = balance
    @arguments = @date, @amount, @balance
  end
end
