module GameConfig
    TOTAL_GUESES = 10
    def game_over?(attempts)
      attempts == TOTAL_GUESES
    end
end
