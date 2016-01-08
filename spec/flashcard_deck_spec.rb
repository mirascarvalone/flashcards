require_relative '../flashcard_deck'

describe FlashCardDeck do
  let(:flashcard_deck) {FlashCardDeck.new('short.txt')}

  describe 'initialize' do
    it 'creates a deck with card elements' do
      expect(flashcard_deck.deck[0]).to be_kind_of Card
    end
  end

  describe '.select_card' do
    it 'selects a random card' do
      expect(flashcard_deck.select_card).to be_kind_of Card
    end

    it 'removes card from deck' do
      selected_card = flashcard_deck.select_card
      expect(flashcard_deck.deck.find_index(selected_card)).to be nil
    end
  end

  describe '.remove_card' do
    it 'removes card' do
      remove_card = flashcard_deck.deck[0]
      new_deck = flashcard_deck.remove_card(flashcard_deck.deck[0])
      expect(flashcard_deck.deck.find_index(remove_card)).to be nil
    end
  end

  describe '.empty?' do
    it 'checks if array is empty' do
      expect(flashcard_deck.empty?).to eq false
    end
  end

end
