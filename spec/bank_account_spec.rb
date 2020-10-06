require 'bank_account'

describe BankAccount do
  subject(:transaction) { Transact.new }
  subject(:acc) { BankAccount.new(transaction) }

  # describe 'getStatement' do

  #   it 'when called prints statement of account history' do
  #     acc.deposit(10)
  #     expect(acc.getStatement).to include("#{BankAccount::TIME}, 10, - , 10")
  #   end
  # end

  # describe 'compileStatement' do

  #   it 'sorts history array into printable format' do
  #     acc.deposit(10)
  #     acc.withdraw(10)
  #     expect(acc.compileStatement).to eq("#{BankAccount::TIME}, 10, - , 10\n#{BankAccount::TIME}, - , -10, 0\n")
  #   end
  # end

end