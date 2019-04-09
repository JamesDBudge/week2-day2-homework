require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")
require_relative("../bear.rb")
require_relative("../river.rb")

class TestBear < MiniTest::Test

def setup
  @bear = Bear.new("Bearnard", "Brown")
end

def test_bear_has_name
  assert_equal("Bearnard", @bear.name)
end




end
