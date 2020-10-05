require 'bank_account'

describe BankAccount do

  describe 'balance' do

    it 'returns the balance of the account' do
      expect(subject.balance).to eq(0)
    end

  end

end
