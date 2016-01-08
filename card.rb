class Card

  attr_reader :term, :definition

  # attr_accessor :guesses, :fail

  def initialize(args = {})
    @term = args.fetch(:term, nil)
    @definition = args.fetch(:definition, nil)
    # @guesses = 0
    # @fail
  end
end
