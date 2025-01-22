# frozen_string_literal: true

require_relative 'knight_travails/board'
require_relative 'knight_travails/knight'
require_relative 'knight_travails/game'

# Knight Travails
module KnightTravails
  def self.new
    Game.new
  end
end
