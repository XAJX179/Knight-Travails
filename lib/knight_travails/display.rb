# frozen_string_literal: true

# KnightTravails
module KnightTravails
  # Board Display
  module Display
    def to_s
      @data.each do |key, value|
        print " y  #{key} => "
        print_values(value)
        print "\n"
      end
      print "     x->  0  1  2  3  4  5  6  7\n\n"
    end

    def print_values(value) # rubocop:disable Metrics/MethodLength
      value.each do |element|
        case element
        when ''
          print " \u25A1 "
        when 'S'
          print ' S '
        when 'P'
          print " \u25FC "
        else
          print " \u265E "
        end
      end
    end

    def add_paths(paths)
      paths = paths.scan(/\[(\d+), (\d+)\]/).map { |x, y| [x.to_i, y.to_i] }
      paths.shift
      paths.pop
      paths.each { |p| insert(p, 'P') }
    end
  end
end
