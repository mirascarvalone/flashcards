require_relative 'parseable'
require_relative 'card'


class FlashCardDeck
  include Parseable

  attr_accessor :selected_card, :deck

  def initialize(file)
    @deck = []
    card_array = parse_cards_from_file(file)
   @deck = card_array.map {|card_info| Card.new(card_info)}
    #parse the sample card file

  end

  def select_card
    @selected_card = @deck.sample
    self.remove_card(@selected_card)
  end

  def remove_card(card)
    # if selected_card
    # end
    @deck.delete(card)
  end

end
