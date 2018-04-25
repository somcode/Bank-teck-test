require 'print'
describe Print do

  describe '#print_header' do
    it 'Print header for transactions' do
      expect{ subject.print_header }.to output(" date || credit || debit || balance \n").to_stdout
    end
  end
end
