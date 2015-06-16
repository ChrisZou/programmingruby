#!/usr/bin/env ruby -w

class AttrWriterTest
    attr_accessor :one, :two
    def initialize
        one = 1
        self.two = 2
    end
end

a = AttrWriterTest.new
puts a.one
puts a.two