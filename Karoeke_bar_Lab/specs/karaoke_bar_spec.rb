require("minitest/autorun")
require("minitest/rg")
require_relative("../karaoke_bar")
require_relative("../room")
require_relative("../guest")
require_relative('../song')

class KaraokeTest < MiniTest::Test

  def setup
    @song1 = Song.new("Hakuna Matata", "Movie Sound Tracks")
    @song2 = Song.new("I will be the king", "Movie Sound Tracks")
    @song3 = Song.new("Son of man", "Movie Sound Tracks")

    @room1 = Room.new("1", "Movie Sound Tracks",[@song1, @song2])

    @karaoke = Karaoke.new("Disney K_bar", [@room1])

    @guest1 = Guest.new("Timon",140, "Hakuna Matata")
    @guest2 = Guest.new("Pumba",140, "Hakuna Matata")
    @guest3 = Guest.new("Simba",140, "Hakuna Matata")
  end

  def test_guest_checking_in
    @room1.check_in(@guest1)
    assert_equal(true, @room1.occupied)
    assert_equal(1, @room1.guests.count)
  end

  def test_guest_checking_out
    @room1.check_in(@guest1)
    @room1.check_in(@guest2)

    @room1.check_out(@guest1)
    @room1.check_out(@guest2)

    assert_equal(0, @room1.guests.count)
    assert_equal(false, @room1.occupied)
  end

  def test_guest_checking_in__reaching_the_limit
    @room1.check_in(@guest1)
    @room1.check_in(@guest1)
    @room1.check_in(@guest1)

    assert_equal("Sorry the room reached the guest limit", @room1.check_in(@guest1))
  end

  def test_guest_checking_in__the_fav_song_in_playlist
    @room1.check_in(@guest1)
    assert_equal("Whoo!", @room1.check_in(@guest1))
  end

end
