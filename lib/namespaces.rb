module MyApp
  class Person
    attr_accessor :hometown

    def initialize(hometown)
      self.hometown = hometown
    end
  end
end

peter = MyApp::Person.new("Stockholm")
puts peter.hometown
