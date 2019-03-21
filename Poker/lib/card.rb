class Card 
  attr_accessor :value, :suit, :display
  # VALUE (0..12).to_a
  DISPLAY = ((2..10).to_a.map(&:to_s) + ['J', 'Q', 'K', 'A']).freeze

  def initialize(value, suit)
    @value = value 
    @suit = suit
    @display = DISPLAY[@value]
  end 
end 