# frozen_string_literal: true

require 'bank_account'
require 'transaction_history'

describe 'Using the bank account' do

  subject(:transaction) { TransactionHistory.new }  
  subject(:acc) { BankAccount.new(transaction) }

  time = Time.now.strftime('%d/%m/%y')

  it 'Full Feature Test' do
    acc.deposit(100)
    acc.withdraw(50)
    expect(acc.print_statement).to include(balance: '100.00', credit: '100.00', date: time, debit: ' ')
    expect(acc.print_statement).to include(balance: '50.00', credit: ' ', date: time, debit: '50.00')
  end

end