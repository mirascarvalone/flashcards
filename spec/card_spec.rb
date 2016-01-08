require_relative '../card'

describe Card do
  let(:card) {Card.new({:term => 'MVC', :definition => 'model view controller'})}
  it 'creates a card with initial values' do
    expect(card.term).to eq 'MVC'
    expect(card.definition).to eq 'model view controller'
  end

end
