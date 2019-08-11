require("minitest/autorun")
require("minitest/rg")
require_relative("../room")
require_relative("../song")
require_relative("../guest")

class RoomTest < MiniTest::Test

  def setup
    @song1 = Song.new("Hakuna Matata", "Movie Sound Tracks")
    @song2 = Song.new("Son of man", "Movie Sound Tracks")

    @room1 = Room.new("1", "Movie Sound Tracks",[@song1,@song2])
    @guest1 = Guest.new("Timon",140, "Hakuna Matata")


  end

  def test_getting_room_playlist
    assert_equal(2, @room1.playlist.count)
  end

  def test_adding_song_to_room
    @room1.add_song(@song2)
    assert_equal(3, @room1.playlist.count)
  end

  
end
