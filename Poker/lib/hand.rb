class Hand 
  attr_reader :current_hand

  SET_SCORES = { r_flush:9, s_flush:8, four:7, s_house:6, flush:5, straight:4, three:3, two:2, one:1, none:0 }

  SORTED = ['1']

  def initialize
    @current_hand = []
    @tie_breaking_card = nil
  end 

  def royal_flush?
    initial_card_suit = current_hand.first.suit
    return false unless current_hand.all? { |card| card.suit == initial_card_suit }
    values = current_hand.map(&:value).sort 
    values == (8..12).to_a
  end

  def straight_flush?
    initial_card_suit = current_hand.first.suit
    return false unless current_hand.all? { |card| card.suit == initial_card_suit }
    values = current_hand.map(&:value).sort 
    start_point = values.first 
    values == (start_point..start_point + 4).to_a
  end

  def four
    values = current_hand.map(&:value)
    # num_values = 
  end

end 