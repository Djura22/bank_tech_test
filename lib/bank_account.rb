class BankAccount

  attr_reader :balance, :account_history

  DEFAULT_BALANCE = 0
  TIME = Time.new

  def initialize
    @balance = DEFAULT_BALANCE
    @account_history = []
    @time = TIME

  end

  def deposit(amount)
    @balance += amount
    @account_history.push("#{TIME}, #{amount}, #{@balance}")
  end

  def withdraw(amount)
    fail "Insufficient Funds, balance is #{@balance}" if @balance < amount
    @balance -= amount
    @account_history.push("#{TIME}, #{-amount}, #{@balance}")
  end

  def getStatement
    puts "date || credit || debit || balance"
    return @account_history
  end

end