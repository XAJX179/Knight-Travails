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

      pp @board.at([3, 3]) == 'S'
      paths = all_possible_paths(start)
      pp "paths => #{paths}"

      @board.to_s
    end

    # finds possible moves for each direction
    def all_possible_moves(coord)
      array = []
      array << @knight.moves_from(coord, 0, @board)
      array << @knight.moves_from(coord, 1, @board)
      array << @knight.moves_from(coord, 2, @board)
      array << @knight.moves_from(coord, 3, @board)
      array
    end

    # finds each possible path
    def all_possible_paths(coord, curr_path = [], paths = [])
      pp "coord => #{coord}"
      pp "curr_path => #{curr_path}"
      return curr_path << coord if curr_path.include?(coord)

      curr_path << coord
      return paths << curr_path if @board.at(coord) == 'S'

      moves = all_possible_moves(coord).flatten(1)
      pp "moves => #{moves}"
      moves.each do |move|
        pp "move => #{move}"
        all_possible_paths(move, curr_path, paths)
        pp "paths => #{paths}"
        curr_path.pop
      end
      paths
    end
  end
end
