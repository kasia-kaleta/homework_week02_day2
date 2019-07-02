class River

  def initialize(name, fish)
    @name = name
    @fish = fish
  end

  def fish_count()
    return @fish.length()
  end

  def lose_fish(fish)
    @fish.delete(fish)
  end


end
