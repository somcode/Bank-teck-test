require 'account'

describe Account do

  subject(:account) { described_class.new }

  describe "#deposit" do
    it "acoount responds to deposit method" do
      expect(account).to respond_to(:deposit).with(2).arguments
    end
  end

end
