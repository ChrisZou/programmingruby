require 'awesome_print'

class Parent
  def initialize(age)
    @age = age
  end

  private
  def say_hello
    puts "hello from #{self}"
  end
end

# p = Parent.new
# p.say_hello

class Child < Parent
  def can_call_super_private_method?
    say_hello
  end
end

c = Child.new(8)
# c.say_hello
c.can_call_super_private_method?

# p Child.superclass
# p Parent.superclass
# p Object.superclass
# p BasicObject.superclass.inspect
# p nil.class
