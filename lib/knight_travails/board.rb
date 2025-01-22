# frozen_string_literal: true

# Knight Travails
module KnightTravails
  # Board of Classic 8x8 Chess
  class Board
    def initialize
      @data = {
        7 => ['', '', '', '', '', '', '', ''],
        6 => ['', '', '', '', '', '', '', ''],
        5 => ['', '', '', '', '', '', '', ''],
        4 => ['', '', '', '', '', '', '', ''],
        3 => ['', '', '', '', '', '', '', ''],
        2 => ['', '', '', '', '', '', '', ''],
        1 => ['', '', '', '', '', '', '', ''],
        0 => ['', '', '', '', '', '', '', '']
      }
    end

    # inserts a data in the Board
    def insert((x_coord, y_coord), data)
      @data[y_coord][x_coord] = data
      pp @data
    end
  end
end
