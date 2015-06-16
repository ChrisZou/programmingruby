#!/usr/bin/env ruby -w
class Triangle
    SIDES = 3
    def area
        
    end
end

class Square
    SIDES = 4
    def initialize(side_length)
        @side_length = side_length
    end
    def area
        @side_length * @side_length
    end
end

puts "A triangle has #{Triangle::SIDES} sides"

s = Square.new(3)
puts "Square area: #{s.area}"
