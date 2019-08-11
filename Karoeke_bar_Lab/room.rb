class Room

  attr_reader :name
  attr_accessor :playlist, :playlist_title, :occupied, :guests

  def initialize(name, playlist_title, playlist)
    @name = name
    @playlist_title = playlist_title
    @playlist = playlist
    @occupied = false
    @guests = []
  end

  def add_song(song)
    @playlist.push(song)
  end

  def check_in(guest)
    @occupied = true
    if @guests.count < 3
      @guests << guest
    else
      return "Sorry the room reached the guest limit"
    end
    song_titles = @playlist.map { |song| song.title }
    return "Whoo!" if song_titles.include?(guest.fav_song)
  end

  def check_out(guest)
    @guests.delete(guest)
    @occupied = false if @guests.count == 0
  end

end
