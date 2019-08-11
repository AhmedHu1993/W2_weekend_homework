class Guest

  attr_reader :name, :fav_song
  attr_accessor :money

  def initialize(name, money, fav_song)
    @name = name
    @money = money
    @fav_song = fav_song
  end

end
