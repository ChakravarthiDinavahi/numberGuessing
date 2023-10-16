require './game_config'
require './random_generator'
require './winning_strategy'
class Game
  include GameConfig
  attr_accessor :target_number, :game_player, :winning_strategy

  def initialize
    @target_number = RandomnGenerator.run
    @game_player = GamePlayer.new
    @winning_strategy = WinningStrategy.new(target_number)
  end

  def start
    loop do
      guess = game_player.make_move
      if winning_strategy.success?(guess)
        game_player.success_message
        break
      else
        game_player.fail_message(guess, target_number)
      end
      if game_over?(game_player.number_of_attempts)
        game_player.game_over_message(target_number)
        break
      end
    end
  end
end
