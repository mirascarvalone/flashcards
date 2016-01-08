require_relative 'flashcard_deck'
require_relative 'view'

class Controller

  def initialize
    @view = View.new
    @flashcard_deck = Flashcard.new
    run_interface
  end

  def run_interface

  end


end
