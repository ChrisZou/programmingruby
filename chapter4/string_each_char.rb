'cat'.each_char.with_index {|item, index| puts "#{index}, #{item}"}

# p (1..10).each_slice(3).to_a
a = (1..10).to_a
a.each_slice(4) {|slice| p slice}