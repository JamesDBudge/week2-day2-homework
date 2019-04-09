require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")
require_relative("../river.rb")

class TestRiver < MiniTest::Test

def setup
  @nemo = Fish.new("Nemo")
  @dory = Fish.new("Dory")
  @bruce = Fish.new("Bruce")
  @river_name = River.new("Spey")
end

def test_river_has_name
  assert_equal("Spey", @river_name.river_name)
end

def test_river_empty
  assert_equal(0, @river_name.fish_in_river.length)
end

def test_stock_river_with_fish__3
  @river_name.add_fish_to_river(@nemo)
  @river_name.add_fish_to_river(@dory)
  @river_name.add_fish_to_river(@bruce)
  assert_equal(3, @river_name.fish_in_river.length)
end

end
