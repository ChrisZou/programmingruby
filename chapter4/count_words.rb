require 'awesome_print'
require_relative 'count_frequency'
require_relative 'words_from_string'

text = %{The problem breaks down into two parts. First, given some text as a string, return a list of words. That sounds like an array. Then, build a count for each distinct word. That sounds like a use for a hash---we can index it with the word and use the corresponding entry to keep a count.}

words_list = words_from_string text
frequencies = count_frequency(words_list)
sorted = frequencies.sort_by {|word, count| count }
top_five = sorted.last(5)
# top_five.each {|word, count| puts "#{word}: #{count}"}
# sorted.last(5).each {|pair| puts "#{pair[0]}: #{pair[1]}"}
# p top_five.map {|key, value| "#{key}: #{value}"}
mapped = top_five.map {|pair| "#{pair[0]}: #{pair[1]}"}
puts mapped[0].class