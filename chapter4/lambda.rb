# bo = lambda {|param| puts "you called me with #{param}"}
# bo.call "hello"
# bo.call 99

# def n_times(value)
#   lambda {|n| n*value}
# end
#
# times = n_times 3
# puts times.call 8
# puts times.call 'hello'

# def double
#   value = 1
#   lambda {value = value*2}
# end
#
# double_number = double
# puts double_number.call
# puts double_number.call
# puts double_number.call

l = lambda {puts 'h'}
puts l.class

l2 = -> n { n*2}
puts l2.class
puts l2.call 4