require 'bank_account'

describe BankAccount do

  before do
    @acc = BankAccount.new
  end

  it 'stores each transaction with the history array' do
    @acc.deposit(10)
    expect(@acc.account_history).to eq(["#{BankAccount::TIME}, 10, 10"])
  end

  describe 'balance' do
    it 'returns the balance of the account' do
      expect(@acc.balance).to eq(BankAccount::DEFAULT_BALANCE)
    end
  end

  describe 'deposit' do
    it 'tops up the account balance' do
      @acc.deposit(10)
      expect(@acc.balance).to eq(10)
    end
  end

  describe 'withdraw' do

    it 'when called it reduces balance by withdrawal amount' do
      @acc.deposit(10)
      @acc.withdraw(10)
      expect(@acc.balance).to eq(0)
    end 
    
    it 'raises an error when attempts to withdraw are over balance amount' do
      expect{ subject.withdraw(12) }.to raise_error "Insufficient Funds, balance is #{@acc.balance}"
    end
  end

  describe 'statement' do

    it 'when called prints statement of account history' do
      @acc.deposit(10)
      expect(@acc.statement).to include("#{BankAccount::TIME}, 10, 10")
    end
  end  

end