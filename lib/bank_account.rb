require './lib/transact.rb'

class BankAccount

  attr_reader :transact

  def initialize(transact)
    @transact = transact

  end

  def deposit(amount)
    transact.deposit(amount)
  end

  def withdraw(amount)
    transact.withdraw(amount)
  end

  def getStatement
    puts "date       || credit || debit || balance"
    return compileStatement
  end

  def compileStatement
    statement = []
    
  end

end