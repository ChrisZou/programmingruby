f = File.open('array_first_and_last.rb')
f.each_with_index {|line, index| puts "line #{index}: #{line}"}