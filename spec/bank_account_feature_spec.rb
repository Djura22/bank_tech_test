# frozen_string_literal: true

require 'bank_account'
require 'transaction_history'

describe BankAccount do

  let(:transaction) { double("TransactionHistory") }
  subject(:acc) { BankAccount.new(transaction) }
  time = Time.now.strftime('%d/%m/%y')

  describe 'print_statement' do
    it 'when called prints statement of account history' do
      allow(transaction).to receive(:transact_history).and_return([{:date=>time, :credit=>"10.00", :debit=>" ", :balance=>"10.00"}])
      expect(acc.print_statement).to include(balance: '10.00', credit: '10.00', date: time, debit: ' ')
    end
  end

end