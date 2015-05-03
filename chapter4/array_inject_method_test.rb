require 'awesome_print'

a = [1,3,5,7]
puts a.inject(1) {|sum, ele| sum = sum*ele }