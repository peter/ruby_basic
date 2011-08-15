require 'test/unit'

class Person
  attr_accessor :name, :age
  
  def initialize(name, age)
    self.name = name
    self.age = age
  end
  
  def old?
    age > 40
  end
end

# In Test::Unit we organize our tests into test cases. Each test case
# is a class that inherits from Test::Unit::TestCase.
#
# Here are some of the assertion methods that test/unit provides:
#
# assert
# assert_equal
# assert_nil
# assert_delta
# assert_match
# assert_block
# assert_raise
# assert_nothing_raised
#
class PersonTest < Test::Unit::TestCase
  def setup
    @person = Person.new("Joe", 43)
  end
  
  def teardown
    # Nothing to tear down in this case
  end
  
  def test_name
    assert_equal "Joe", @person.name
    @person.name = "Peter"
    assert_equal "Peter", @person.name
  end

  def test_age
    assert_equal 43, @person.age
    @person.age = 15
    assert_equal 15, @person.age
  end
  
  def test_old
    assert @person.old?
    @person.age = 39
    assert !@person.old?
  end
end
