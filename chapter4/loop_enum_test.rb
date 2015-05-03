require 'awesome_print'

short_enum = [1, 3, 5].to_enum
long_enum = ('a'..'z').to_enum

loop do
  puts "#{short_enum.next} - #{long_enum.next}"
end
