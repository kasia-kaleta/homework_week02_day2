require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')


class RiverTest < MiniTest::Test

  def setup()
    @fish1 = Fish.new("Bob")
    @fish2 = Fish.new("Al")
    @fish3 = Fish.new("Greg")

    @fish = [@fish1, @fish2, @fish3]

    @river = River.new("Amazon",@fish)

  end

  def test_lose_fish()
    @river.lose_fish(@fish1)
    assert_equal(2, @river.fish_count())
  end

end
