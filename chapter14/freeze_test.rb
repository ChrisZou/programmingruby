#!/usr/bin/env ruby -w
class Person
    attr_accessor :name
    def initialize()
        @name = 'chris'
    end
end

p = Person.new
p p
p.freeze
p.name = 'angle'
p p
