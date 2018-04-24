require 'account'
describe Account do
  subject(:account) { described_class.new }
  let(:date) { double() }

  describe '#deposit' do
    it 'Responds to deposit method' do
      expect(account).to respond_to(:deposit).with(2).argument
    end

    it 'Account starts with the balance of zero' do
      expect(account.balance).to eq(0)
    end

    it 'Client can make a deposit to account' do
      account.deposit(1000, 12/3/2018)
      expect(account.balance).to eq(1000)
    end

    it 'After making deposit add credit to transactions array' do
      account.deposit(500, 12/3/2018)
      expect(account.transactions).to eq([date: 12/3/2018, credit: 500, debit: " " , balance: 500 ])
    end
  end

  describe '#withdrawl' do
    it 'Client can withdrawl amount from account' do
      account.deposit(2000, 14/02/2018)
      account.withdrawl(500, 16/3/2018)
      expect(account.balance).to eq(1500)
    end

    it 'Raise error for withdrawl if amount is more than balance' do
      expect { account.withdrawl(20, 12/3/2018) }.to raise_error "You don't have enough balance"
    end
  end

end
