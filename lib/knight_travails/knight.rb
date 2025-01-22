# frozen_string_literal: true

# Knight Travails
module KnightTravails
  # A Knight piece of Chess game
  class Knight
    def initialize(direction = 0)
      @directions = ['-x', '+y', '+x', '-y'] # google x-axis and y-axis
      @current_direction = @directions[direction]
    end
  end
end
