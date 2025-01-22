# frozen_string_literal: true

# Knight Travails
module KnightTravails
  # Game class
  class Game
    def initialize
      @board = Board.new
      @knight = Knight.new
    end

    # use shortest path for knight from start to end printing each move along the way.
    def knight_moves(start, _stop)
      pp start
      @board.insert_knight(start)
    end
  end
end
