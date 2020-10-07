# frozen_string_literal: true

require './lib/transaction_history.rb'

# Bank Account Class
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

  def print_statement
    puts ' date     || credit || debit || balance'
    transact.transact_history.reverse_each do |t|
      print " #{t[:date]} ||",
            " #{t[:credit]}  ||",
            " #{t[:debit]} ||",
            " #{t[:balance]}\n"
    end
  end
end
