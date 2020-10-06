require 'transact'

describe Transact do
  subject(:transaction) { Transact.new }

  it 'stores each transaction with the history array' do
    transaction.deposit(10)
    expect(transaction.transact_history).to eq([{:date=>"06/10/20", :credit=>"10.00", :debit=>"---", :balance=>"10.00"}])
  end

  describe 'balance' do
    it 'returns the balance of the account' do
      expect(transaction.balance).to eq(Transact::DEFAULT_BALANCE)
    end
  end

  describe 'deposit' do
    it 'tops up the account balance' do
      transaction.deposit(10)
      expect(transaction.balance).to eq(10)
    end
  end

  describe 'withdraw' do

    it 'when called it reduces balance by withdrawal amount' do
      transaction.deposit(10)
      transaction.withdraw(10)
      expect(transaction.balance).to eq(0)
    end

    it 'raises an error when attempts to withdraw are over balance amount' do
      expect{ transaction.withdraw(12) }.to raise_error "Insufficient Funds, balance is #{transaction.balance}"
    end
  end
  
end
