def type_and_value(arg)
    puts "Type: #{arg.class}, value: #{arg}"
end

while line = gets
    break if line.chomp == 'end'
    num1, num2 = line.split(/,/)
    type_and_value(num1)
    type_and_value(num2)
end

while line = gets
    break if line.chomp == 'end'
    num1, num2 = line.split(/,/).map {|val| Integer(val)}
    type_and_value(num1)
    type_and_value(num2)
end

