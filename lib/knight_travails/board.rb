# frozen_string_literal: true

# Knight Travails
module KnightTravails
  # Board of Classic 8x8 Chess
  class Board
    attr_reader :data

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
      return nil if x_coord.negative?

      @data[y_coord][x_coord] = data
    end

    # returns data from the Board at given coords
    def at((x_coord, y_coord))
      return nil if x_coord.negative? || x_coord > 7 || y_coord.negative? || y_coord > 7

      @data[y_coord][x_coord]
    end
  end
end
