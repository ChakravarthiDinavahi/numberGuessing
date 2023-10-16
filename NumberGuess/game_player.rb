require './player'
class GamePlayer
  attr_accessor :player , :number_of_attempts

  def initialize
      @player = Player.new
      @number_of_attempts = 0
  end

  def count_attempt
      @number_of_attempts += 1
  end

  def make_move
    count_attempt
    puts "Please Enter Your guess from 1 to 100"
    gets.chomp.to_i
  end

  def success_message
      puts "Good job, [#{player.name}]! You guessed my number in [#{number_of_attempts}] guesses!"
  end

  def game_over_message(target_number)
    puts "Sorry. You didn't get my number. My number was [#{target_number}]."
  end

  def fail_message(guess, target_number)
    if guess > target_number
        puts "Oops. Your guess was HIGH."
    else
        puts "Oops. Your guess was LOW."
    end
  end
end
