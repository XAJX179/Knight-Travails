# frozen_string_literal: true

# Knight Travails
module KnightTravails
  # Game class
  class Game
    def initialize
      @board = Board.new
      @knight = Knight.new
      pp 'Coordinates are [x,y] x coord first.'
    end

    # find shortest path for knight from start to end printing each stop along the way.
    def knight_moves(start, stop)
      @board.insert(start, @knight)
      @board.insert(stop, 'S')
    end

    def all_possible_moves(coord)
      array = []
      array << @knight.moves_from(coord, 0, @board)
      array << @knight.moves_from(coord, 1, @board)
      array << @knight.moves_from(coord, 2, @board)
      array << @knight.moves_from(coord, 3, @board)
      array
    end
  end
end
