module Parseable

  def parse_cards_from_file(file)
    cards = []
    text = File.read(file).split(/\n/)

    text.reject! { |string| string == ""}

    definition_counter = 0
    term_counter = 1

    all_cards = []

    for i in (0..(text.length/2)-1)
      card_data = {}
      card_data[:definition] = text[definition_counter]
      card_data[:term] = text[term_counter]
      definition_counter += 2
      term_counter +=2
      all_cards << card_data
    end

    all_cards
  end

end
