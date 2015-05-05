require 'awesome_print'

class Person < BasicObject
  def initialize(name)
    @name = name
  end
end

p = Person.new('Chris')
puts p
