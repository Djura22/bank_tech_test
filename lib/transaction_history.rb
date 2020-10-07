# frozen_string_literal: true

# Transaction Class for handling transaction history
class TransactionHistory

  attr_reader :balance, :transact_history

  DEFAULT_BALANCE = 0

  def initialize
    @balance = DEFAULT_BALANCE
    @transact_history = []
  end

  def deposit(amount)
    @balance += amount
    confirm_deposit(amount)
  end

  def withdraw(amount)
    fail "Insufficient Funds, balance is #{@balance}" if @balance < amount
    @balance -= amount
    confirm_withdrawal(amount)
  end
  
  private

  def confirm_deposit(amount)
    transaction = {
      date: Time.now.strftime('%d/%m/%y'),
      credit: format('%.2f', amount),
      debit: ' ',
      balance: format('%.2f', @balance)
    }
    @transact_history << transaction
  end

  def confirm_withdrawal(amount)
    transaction = {
      date: Time.now.strftime('%d/%m/%y'),
      credit: ' ',
      debit: format('%.2f', amount),
      balance: format('%.2f', @balance)
    }
    @transact_history << transaction
  end

end