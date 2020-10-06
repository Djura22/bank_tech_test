# frozen_string_literal: true

require 'bank_account'

describe BankAccount do
  subject(:transaction) { Transact.new }
  subject(:acc) { BankAccount.new(transaction) }

  describe 'getStatement' do
    it 'when called prints statement of account history' do
      acc.deposit(10)
      expect(acc.print_statement).to include(balance: '10.00', credit: '10.00', date: '06/10/20', debit: '-----')
    end
  end
end
