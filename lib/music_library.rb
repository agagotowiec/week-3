class MusicLibrary
  def initialize
    @tracks = []
  end

  def add(track) 
    @tracks << track
  end

  def all
    #Returns a list of track objects (all tracks)
    @tracks
  end
  
  def search_by_title(keyword) 
    @tracks.select do |track|
    match = track.title.include?(keyword)
  end
end
end