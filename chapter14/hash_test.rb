#!/usr/bin/env ruby -w
#Test using object as hash key

arr = [1, 2]
hash = {arr => 'value'}
puts hash[arr]

arr[0] = 99
puts "After changing key object: #{hash[arr]}"

hash.rehash
puts hash[arr]

