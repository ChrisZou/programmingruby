require 'awesome_print'

def count_frequency(array_of_words)
  frequencies = Hash.new(0)
  array_of_words.each {|word| frequencies[word] += 1 }
  frequencies
end