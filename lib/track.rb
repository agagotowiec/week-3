class Track
  def initialize(title, artist) 
 @title = title
 @artist = artist
  end

  def title
    @title
  end

  def artist
    @artist
  end

  def format
    if @title.empty? || @artist.empty?
      "Please provide title and the artist"
    else
    return "#{@title} by #{@artist}"
  end
end
end