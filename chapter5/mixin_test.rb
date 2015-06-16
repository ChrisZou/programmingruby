require 'awesome_print'

module Debug
  def who_am_i?
    "#{self.class} (id: #{self.object_id}): #{self.name}"
  end
end

#
# class HandsomeGuy
#   include Debug
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end
#
# class PrettyGirl
#   include Debug
#   attr_reader :name
#   def initialize(name)
#     @name = name
#   end
# end

class Person
  include Debug
  attr_reader :name

  def initialize(name)
    @name = name
  end
end

class HandsomeGuy <Person
end

me = HandsomeGuy.new('Chris')
puts me.who_am_i?

class PrettyGirl < Person
end

you = PrettyGirl.new('Angle')
puts you.who_am_i?