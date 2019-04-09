class River

attr_reader :river_name
attr_accessor :fish_in_river

def initialize(river_name)
  @river_name = river_name
  @fish_in_river = []
end

def add_fish_to_river(fish)
  @fish_in_river.push(fish)
end

def loses_a_fish(fish)
  @fish_in_river.shift
end



end
