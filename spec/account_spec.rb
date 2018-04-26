require 'account'
describe Account do
  subject(:account) { described_class.new }
  subject(:account1) { described_class.new(1000) }
  date = Date.new(2018,4,3)
  date1 = Date.new(2018,4,14)

  describe '#deposit' do
    it 'Responds to deposit method' do
      expect(account).to respond_to(:deposit).with(2).argument
    end

    it 'Account starts with the balance of zero' do
      expect(account.balance).to eq(0)
    end

    it 'Client can make a deposit to account' do
      account.deposit(1000, date)
      expect(account.balance).to eq(1000)
    end

    it 'After making deposit return date, credit and balance' do
      expect(account.deposit(500, date)).to eq("2018-04-03 || 500.00 ||  || 500.00 ")
    end
  end

  describe '#withdrawl' do
    it 'Client can withdrawl amount from account' do
      account.deposit(2000, date)
      account.withdrawl(500, date1)
      expect(account.balance).to eq(1500)
    end

    it 'Raise error for withdrawl if amount is more than balance' do
      expect { account.withdrawl(20, date) }.to raise_error "You don't have enough balance"
    end

    it 'After making withdrawl return date, debit and balance' do
      expect(account1.withdrawl(800, date)).to eq("2018-04-03 ||  || 800.00 || 200.00 ")
    end
  end

end
