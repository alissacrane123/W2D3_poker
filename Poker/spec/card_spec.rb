require 'card'
require 'rspec'

RSpec.describe Card do
  subject(:card) {Card.new('2', :spades)}

  describe '#initialize' do 

    it 'should assign a given card value' do 
      expect(card.value).to eq('2')
    end

    it 'should assign a given suit value' do 
      expect(card.suit).to eq(:spades)
    end
  end
end 