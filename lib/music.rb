class Music

  def initialize
    @tracks = []
  end

  def add(track)
    if track.empty?
      "Please provide your track"
    else
    @tracks << track
    end
  end

  def list
    @tracks
  end

end