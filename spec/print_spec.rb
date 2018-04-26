require 'print'
describe Print do
  describe '#print_header' do
    it 'Print header for transactions' do
      expect{ subject.print_header }.to output(" date || credit || debit || balance \n").to_stdout
    end
  end

  describe '#print' do
    it 'Responds to print method with one argument' do
      expect(subject).to respond_to(:print).with(1).argument
    end

    it 'Print the transaction include date, credit, debit, balance' do
      expect do
        subject.print([
          ' date || 500.00 ||  || 500.00 ',
          ' date ||  || 800.00 || 800.00 '
           ])
         end.to output(" date || credit || debit || balance \n date ||  || 800.00 || 800.00 \n date || 500.00 ||  || 500.00 \n").to_stdout
    end
  end

end
