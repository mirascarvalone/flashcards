class Card

  attr_reader :term, :definition

  def initialize(args = {})
    @term = args.fetch(:term, nil)
    @definition = args.fetch(:definition, nil)
  end

end
