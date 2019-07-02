require('minitest/autorun')
require('minitest/rg')
require_relative('../bears.rb')
require_relative('../river.rb')
require_relative('../fish.rb')


class BearsTest < MiniTest::Test

  def setup()
    @bear = Bears.new("Phillip", "Grizzly")
    @fish = Fish.new("Molly")
    @river = River.new("Amazon", [@fish])

  end

  def test_take_fish()
    @bear.take_fish(@fish, @river)
    assert_equal(1, @bear.fish_count())
    assert_equal(0,@river.fish_count())
  end

  def test_bear_can_roar()
    assert_equal("Roar!", @bear.sound())
  end

end
