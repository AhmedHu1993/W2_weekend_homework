class Karaoke

  attr_reader :name
  attr_accessor :rooms, :playlists

  def initialize(name, rooms)
    @name = name
    @rooms = rooms
  end

end
