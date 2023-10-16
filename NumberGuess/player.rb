class Player
  attr_accessor :name

  def setup
    puts "Please Enter Your Name"
    @name = gets.chomp
    puts "Entered player name #{name}"
  end
end
