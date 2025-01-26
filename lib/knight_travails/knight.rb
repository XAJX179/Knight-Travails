# frozen_string_literal: true

# Knight Travails
module KnightTravails
  # A Knight piece of Chess game
  class Knight
    @@directions = ['-x', '+y', '+x', '-y'] # google x-axis and y-axis # rubocop:disable Style/ClassVars
    def initialize(direction = 0)
      @current_direction = @@directions[direction]
    end

    # changes the direction of knight
    def change_direction(direction)
      @current_direction = @@directions[direction]
    end

    # possible moves_from each direction from given coords.
    def moves_from((x_coord, y_coord), direction, board) # rubocop:disable Metrics/MethodLength
      @current_direction = @@directions[direction]
      case direction
      when 0
        vertical_side_moves_at(x_coord - 2, y_coord, board)
      when 1
        horizontal_side_moves_at(x_coord, y_coord + 2, board)
      when 2
        vertical_side_moves_at(x_coord + 2, y_coord, board)
      else
        horizontal_side_moves_at(x_coord, y_coord - 2, board)
      end
    end

    # move at y+1 and y-1 of given coord if not nil
    def vertical_side_moves_at(x_coord, y_coord, board)
      array = []
      up = board.at([x_coord, y_coord + 1])
      array << [x_coord, y_coord + 1] unless up.nil?
      down = board.at([x_coord, y_coord - 1])
      array << [x_coord, y_coord - 1] unless down.nil?
      array
    end

    # move at x+1 and x-1 of given coord if not nil
    def horizontal_side_moves_at(x_coord, y_coord, board)
      array = []
      left = board.at([x_coord - 1, y_coord])
      array << [x_coord - 1, y_coord] unless left.nil?
      right = board.at([x_coord + 1, y_coord])
      array << [x_coord + 1, y_coord] unless right.nil?
      array
    end
  end
end
