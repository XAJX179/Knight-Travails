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

    # inserts a knight in the Board (represented by 'k')
    def insert_knight((x_coord, y_coord))
      @data[y_coord][x_coord] = 'k'
      pp @data
    end
  end
end
