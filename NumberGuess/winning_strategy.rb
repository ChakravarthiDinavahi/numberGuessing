class WinningStrategy
  attr_accessor :target_number

  def initialize(target_number)
    @target_number = target_number
  end

  def success?(guess)
    target_number == guess
  end

end
