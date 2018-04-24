require 'account'
describe Account do
  subject(:account) { described_class.new }

  describe '#deposit' do
    it 'Responds to deposit method' do
      expect(account).to respond_to(:deposit)
    end

    it 'Account starts with the balance of zero' do
      expect(account.balance).to eq(0)
    end

    it 'Client can make a deposit to account' do
      account.deposit(1000)
      expect(account.balance).to eq(1000)
    end

    it 'After making deposit add credit to transactions array' do
      account.deposit(500)
      expect(account.transactions).to eq([{ :credit => 500 }])
    end
  end

  describe '#withdrawl' do
    it 'Client can withdrawl amount from account' do
      account.deposit(2000)
      account.withdrawl(500)
      expect(account.balance).to eq(1500)
    end

    it 'Raise error for withdrawl if amount is more than balance' do
      expect { account.withdrawl(20) }.to raise_error "You don't have enough balance"
    end

  end

end
