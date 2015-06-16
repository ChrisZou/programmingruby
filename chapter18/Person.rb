#!/usr/bin/env ruby -w
class Person
  attr_accessor :name, :age
  def initialize(name, age)
    @name = name
    @age = age
  end
end
