require("minitest/autorun")
require("minitest/rg")
require_relative("../song")

class SongTest < MiniTest::Test

  def setup
    @song1 = Song.new("Hakuna Matata", "Movie Sound Track")
  end

  def test_getting_song_title
    assert_equal("Hakuna Matata", @song1.title)
  end

end
