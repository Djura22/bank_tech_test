class BankAccount

  attr_reader :balance, :account_history

  def initialize
    @balance = 0
    @account_history = []
  end

  def deposit(amount, date)
    @balance += amount
    @account_history << {date => amount}
  end

  def withdraw(amount, date)
    @balance -= amount
    @account_history << {date => -amount}
  end

end  