require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")
require_relative("../bear.rb")
require_relative("../river.rb")

class TestBear < MiniTest::Test

def setup
  @nemo = Fish.new("Nemo")
  @dory = Fish.new("Dory")
  @bruce = Fish.new("Bruce")
  @bear = Bear.new("Bearnard", "Brown")
end

def test_bear_has_name
  assert_equal("Bearnard", @bear.name)
end

def test_bear_has_type
  assert_equal("Brown", @bear.type)
end

def test_bear_can_eat_a_fish
  @river_name = River.new("Spey")
  @river_name.add_fish_to_river(@nemo)
  @bear.eats_a_fish(@nemo)
  assert_equal(1, @bear.belly.length)
end

def test_bear_can_take_fishies_from_river
  @river_name = River.new("Spey")
  @river_name.add_fish_to_river(@nemo)
  @river_name.add_fish_to_river(@dory)
  @river_name.add_fish_to_river(@bruce)
  @bear.eats_a_fish(@nemo)
  @river_name.loses_a_fish(@nemo)
  assert_equal(2, @river_name.fish_in_river.length)
  assert_equal(1, @bear.belly.length)
end


end
