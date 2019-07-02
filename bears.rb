class Bears


  def initialize(name, type)
    @name = name
    @type = type
    @stomach = []
  end

  def take_fish(fish, river)
    @stomach << fish
    river.lose_fish(fish)
  end

  def fish_count()
    return @stomach.size()
  end

  def sound()
    return "Roar!"
  end

end
