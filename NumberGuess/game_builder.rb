require './game'
require './game_player'
class GameBuilder
  attr_accessor :game, :game_player
  def initialize
    @game = Game.new
    @game_player = GamePlayer.new
  end

  def setup
    game_player.player.setup
  end

  def start
    game.start
  end
end
