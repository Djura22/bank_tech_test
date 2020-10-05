require 'bank_account'

describe BankAccount do

  describe 'balance' do

    it 'returns the balance of the account' do
      expect(subject.balance).to eq(0)
    end

  end  

  describe 'deposit' do

    it 'tops up the account balance' do
      subject.deposit(10)
      expect(subject.balance).to eq(10)
    end  

  end

end