require 'bank_account'

describe BankAccount do

  before do
    @acc = BankAccount.new
    @acc.deposit(10)
  end

  it 'stores each transaction with the history array' do
    expect(@acc.account_history).to eq(["10, #{BankAccount::TIME}, 10"])
  end

  describe 'balance' do
    it 'returns the balance of the account' do
      expect(@acc.balance).to eq(10)
    end
  end

  describe 'deposit' do
    it 'tops up the account balance' do
      @acc.deposit(10)
      expect(@acc.balance).to eq(20)
    end
  end

  describe 'withdraw' do
    
    it 'raises an error when attempts to withdraw are over balance amount' do
      expect{ @acc.withdraw(11) }.to raise_error "Insufficient Funds, balance is #{@acc.balance}"
    end

    it 'when called it reduces balance by withdrawal amount' do
      @acc.withdraw(10)
      expect(@acc.balance).to eq(0)
    end

  end

end