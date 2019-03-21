require "card"

class Deck
  CARD_VALUES = ((2..10).to_a.map(&:to_s) + ['J', 'Q', 'K', 'A']).freeze
  CARD_SUITS = [:spade, :heart, :clubs, :diamond].freeze

  attr_reader :deck_pile
  def initialize
    @deck_pile = []
  end

  def fill_deck
    # @deck_pile << [Card.new('J', :spade)]
  end

end
