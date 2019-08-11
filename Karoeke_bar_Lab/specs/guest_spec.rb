require("minitest/autorun")
require("minitest/rg")
require_relative("../guest")

class GuestTest < MiniTest::Test


  def setup
    @guest1 = Guest.new("Timon")
    @guest2 = Guest.new("Pumba")
  end

  def test_getting_guest_name
    assert_equal("Timon", @guest1.name)
  end





end
