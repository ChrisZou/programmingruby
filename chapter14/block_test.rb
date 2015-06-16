#!/usr/bin/env ruby -w
def one(arg)
    if block_given?
        "Block given to 'one' returns #{yield}"
    else
        arg
    end
end

def two
    if block_given?
        "Block given to 'two' returns #{yield}"
    else
        "two"
    end
end

result1 = one two {
    "three"
}

result2 = one two do
    "Three"
end

puts "Result1: #{result1}"
puts "Result2: #{result2}"
