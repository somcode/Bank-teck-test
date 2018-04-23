require 'account'
describe Account do
  subject(:account) { described_class.new }

  describe '#deposit' do

    it 'Responds to deposit method' do
      expect(account).to respond_to(:deposit)
    end

    it 'Account starts with the balance of zero' do
      expect(account.balance).to eq (0)
    end

    it 'Client can make a deposit to account' do
      account.deposit(1000)
      expect(account.balance).to eq(1000)
    end

  end

end
