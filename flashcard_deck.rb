class FlashCardDeck

  # attr_reader :deck
  attr_accessor :selected_card, :deck

  def initialize
    @deck = []
    #parse the sample card file
  end

  def select_card
    @selected_card = @deck.sample
  end

  def remove_card
    # if selected_card
    # end
    @deck.delete(@selected_card)
  end

end
