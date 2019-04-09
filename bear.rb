class Bear

attr_reader :name, :type
attr_accessor :belly

def initialize(name, type)
  @name = name
  @type = type
  @belly = []
end

def eats_a_fish(fish)
  # p fish
  @belly.push(fish)
  # p @belly
end






end
