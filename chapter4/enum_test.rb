require 'awesome_print'

a = [1, 3, 'cat']
enum_a = a.to_enum
puts enum_a.next
puts enum_a.next
enum_a.each {|i| puts i}

b = {dog: 'canine', fox: 'valpine'}
enum_b= b.to_enum
p enum_b.next

