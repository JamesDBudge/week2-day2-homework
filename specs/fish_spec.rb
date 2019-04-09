require("minitest/autorun")
require("minitest/rg")

require_relative("../fish.rb")

class TestFish < MiniTest::Test

def setup
  @nemo = Fish.new("Nemo")
  @dory = Fish.new("Dory")
  @bruce = Fish.new("Bruce")
end

def test_fish_has_name
  assert_equal("Nemo", @nemo.name)
end




end
