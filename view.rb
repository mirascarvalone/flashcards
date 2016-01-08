class View

  def intro
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition. To exit, enter exit. Ready?  Go!"
  end

  def display(output)
    puts output
  end

  def input
    gets.chomp
  end
end
