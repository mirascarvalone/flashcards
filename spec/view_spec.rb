require_relative '../view'

describe View do
  let(:view) {View.new}

  it 'prints message' do
    expect { view.display("test") }.to output("test\n").to_stdout
  end

# Create possible tests for input
end
