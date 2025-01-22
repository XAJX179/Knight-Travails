# frozen_string_literal: true

# Knight Travails
module KnightTravails
  # Game class
  class Game
    def initialize
      @board = Board.new
      @knight = Knight.new
    end

    # find shortest path for knight from start to end printing each stop along the way.
    def knight_moves(start, stop)
      pp start
      @board.insert(start, @knight)
      pp stop
      @board.insert(stop, 'S')
    end
  end
end
