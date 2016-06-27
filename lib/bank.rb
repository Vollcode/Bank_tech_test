require_relative 'account'

class Bank
  attr :accounts_log

  def initialize
    @accounts_log = []
  end

  def open_account
    account = Account.new
    @accounts_log.push account
    return account
  end

end
