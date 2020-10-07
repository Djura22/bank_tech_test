# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  subject(:transaction) { TransactionHistory.new }
  subject(:acc) { BankAccount.new(transaction) }
  time = Time.now.strftime('%d/%m/%y')

  describe 'getStatement' do
    it 'when called prints statement of account history' do
      acc.deposit(10)
      expect(acc.print_statement).to include(balance: '10.00', credit: '10.00', date: time, debit: ' ')
    end
  end
end
