require_relative '../flashcard_deck'
require_relative '../card'

describe FlashCardDeck do
  let(:flashcard_deck) {FlashCardDeck.new}

  it 'creates an empty deck' do
    expect(flashcard_deck.deck).to eq []
  end

end
