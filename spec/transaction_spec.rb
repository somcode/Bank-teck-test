require 'transaction'
describe Transaction do
  describe '#add' do
    context 'After each transaction' do
      it 'Add transaction to list' do
        expect(subject.add("2018-04-03 || 500.00 ||  || 500.00 ")).to eq (["2018-04-03 || 500.00 ||  || 500.00 "])
      end
    end
  end
end
