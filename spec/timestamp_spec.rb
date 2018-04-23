require 'timestamp'

 describe '#timestamp' do

   subject(:timestamp) { described_class.new }

   it 'Get the date and return it' do
     allow(timestamp).to receive(get_date) { ("01/03/2018") }
     expect(timestamp.get_date).to eq("01/03/2018")
   end
 end
