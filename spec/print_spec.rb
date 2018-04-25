require 'print'
describe Print do

  describe '#print_header' do
    it 'Print header for transactions' do
      expect{ subject.print_header }.to output(" date || credit || debit || balance \n").to_stdout
    end
  end

  describe '#print_body' do
    it 'Responds to print method with one argument' do
      expect(subject).to respond_to(:print_body).with(1).argument
    end
  end
end
