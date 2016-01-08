require_relative '../view'

describe View do
  let(:view) {View.new}

  describe '.intro' do
    it 'prints intro' do
      expect{view.intro}.to output("Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition. To exit, enter exit. Ready?  Go!\n\n").to_stdout
    end
  end

  describe '.display' do
    it 'prints message' do
      expect{view.display("test")}.to output("test\n").to_stdout
    end
  end

  describe '.wrong_guess' do
    it 'prints intro' do
      expect{view.wrong_guess}.to output("That is incorrect, please try again.\n\n").to_stdout
    end
  end

  describe '.right_guess' do
    it 'prints right_guess' do
      expect{view.right_guess}.to output("Correct! Next question...\n\n").to_stdout
    end
  end

  describe '.goodbye' do
    it 'prints goodbye' do
      expect{view.goodbye}.to output("Thank you for studying!\n").to_stdout
    end
  end

end
