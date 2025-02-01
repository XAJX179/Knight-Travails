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

      paths = find_shortest_path(start)
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

    # find shortest path
    def find_shortest_path(coord)
      queue = [{ '' => coord }]

      until queue.empty?
        first = queue.shift
        curr = first.values.flatten
        string = first.keys[0]

        return string += "->#{curr}" if found?(curr)

        append_moves_to_queue(curr, string, queue)

      end
    end

    def append_moves_to_queue(coord, string, queue)
      moves = all_possible_moves(coord).flatten(1)
      string += "->#{coord}"
      moves.each do |move|
        queue << { string => move }
      end
    end

    # returns true if given coord data is 'S' , 'S' is for stop.
    def found?(coord)
      @board.at(coord) == 'S'
    end
  end
end
