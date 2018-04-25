require 'account'
describe Account do
  subject(:account) { described_class.new }
  subject(:account1) { described_class.new(1000) }
  let(:date) { double() }
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

    it 'After making deposit add credit to transactions array' do
      account.deposit(500, date)
      expect(account.transactions).to eq(["2018-04-03 || 500 ||  || 500 "])

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

    it 'After making withdrawl add debit to transactions array' do
      account1.withdrawl(800, date)
      expect(account1.transactions).to eq(["2018-04-03 ||  || 800 || 200 "])
    end
  end

  describe '#print' do
    it 'Print header for transactions' do
      expect{ account.print_header }.to output(" date || credit || debit || balance \n").to_stdout
    end
  end 

end
