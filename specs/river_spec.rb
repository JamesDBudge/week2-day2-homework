require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")
require_relative("../bear.rb")
require_relative("../river.rb")

class TestRiver < MiniTest::Test

def setup
  @river_name = River.new("Spey")
end

def test_river_has_name
  assert_equal("Spey", @river_name.river_name)
end




end
