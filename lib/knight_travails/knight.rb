# frozen_string_literal: true

# Knight Travails
module KnightTravails
  # A Knight piece of Chess game
  class Knight
    @@directions = ['-x', '+y', '+x', '-y'] # google x-axis and y-axis # rubocop:disable Style/ClassVars
    def initialize(direction = 0)
      @current_direction = @@directions[direction]
    end
  end
end
