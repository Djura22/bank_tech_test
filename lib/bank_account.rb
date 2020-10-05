class BankAccount

  attr_reader :balance, :account_history

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @account_history = []

  end

  def deposit(amount)
    @balance += amount
    @account_history << amount
  end

  def withdraw(amount)
    fail "Insufficient Funds, balance is #{@balance}" if @balance < amount
    @balance -= amount
  end

end