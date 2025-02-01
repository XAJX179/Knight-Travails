# frozen_string_literal: true

require_relative 'lib/knight_travails'

game = KnightTravails.new

game.knight_moves([0, 0], [3, 3]) #  == [[0,0],[2,1],[3,3]]  or  [[0,0],[1,2],[3,3]]

game.knight_moves([3, 3], [0, 0])

game.knight_moves([3, 3], [4, 3])
