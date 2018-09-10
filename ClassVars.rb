#!/usr/bin/ruby

class TestClass
  @@varible = "var"

  class << self
    def variable
      @@varible
    end
  end

 # above is the same as
 # def self.variable
 #   @@variable
 # end
end

TestClass.variable
#=> "var"