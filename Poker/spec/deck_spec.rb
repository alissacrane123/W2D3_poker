require 'deck'
require 'rspec'

RSpec.describe Deck do
  subject(:deck) { Deck.new }

  describe '#initialize' do 
    it 'should set @deck_pile to an empty array' do 
      expect(deck.deck_pile).to eq([])
    end
  end

  describe '#fill_deck' do 
    
    before (:each) do 
      deck.fill_deck
    end 

    it 'should fill @deck_pile with 52 objects' do
      expect(deck.deck_pile.length).to eq(52)
    end

    it 'should only contain cards' do
      expect(deck.deck_pile.sample).to be_an_instance_of(Card)
    end
  end
end 