require_relative 'word_game'
describe WordGame do 

	it 'returns foo as input' do
      allow($stdin).to receive(:gets).and_return('foo')
      name = $stdin.gets

      expect(name).to eq('food')
     end
end
      
      
      
