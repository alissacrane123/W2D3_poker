require 'hand'
require 'rspec'

RSpec.describe Hand do
  subject(:hand) { Hand.new }

  describe '#initialize' do 
    it 'should set @current_hand to an empty array' do 
      expect(hand.current_hand).to eq([])
    end
  end

  describe '#draw_cards' do 
    
    before (:each) do 
      hand.draw_cards
    end 

    it 'should fill @curret_hand with 5 objects' do
      expect(hand.current_hand.length).to eq(5)
    end

    it 'should only contain cards' do
      expect(hand.current_hand.sample).to be_an_instance_of(Card)
    end
  end

  describe '#discard_cards' do 

    it 'shouldnt discard any cards if number is zero' do
      new_hand = hand.discard_cards(0)
      expect(new_hand).to be(hand.current_hand)
    end 

    it 'should raise an ArgumentError if passed in number > 3' do 
      expect {hand.discard_cards(4)}.to raise_error(ArgumentError)
    end 

    context 'if passed in valid argument' do 
      it 'should not change size of @current_hand' do 
        hand.discard_cards(2)
        expect(hand.current_hand.length).to eq(5)
      end 
    end 
  end

  
end 