require_relative 'flashcard_deck'
require_relative 'view'

class Controller

  def initialize
    @view = View.new
    @flashcard_deck = FlashCardDeck.new('sample_cards.txt')
    @current_card = @flashcard_deck.select_card
    run_interface
  end

  def run_interface
    @view.intro
    @view.display(@current_card.definition)
    until (input = @view.input) == "exit"
      if input != @current_card.term
        @view.wrong_guess
      else
        @view.right_guess
        @current_card = @flashcard_deck.select_card
        @view.display(@current_card.definition)
      end
    end
    @view.goodbye
  end

end

Controller.new
