require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe "#deposit" do
    describe "acoount responds to deposit method" do
      it "with two arguments" do
        expect(account).to respond_to(:deposit).with(2).arguments
      end
    end

    describe "client can make a deposit to account" do
      it "with specific amount and date" do
        account.deposit(1000, 01-02-2018)
        expect(account.balance).to eq(1000)
      end
    end



  end




end
