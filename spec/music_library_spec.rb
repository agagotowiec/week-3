require 'music_library'

RSpec.describe MusicLibrary do
  it "initially is empty " do
music_library = MusicLibrary.new
expect(music_library.all).to eq []
end
it "returns an empty list if title cannot be recognized " do
  music_library = MusicLibrary.new
  expect(music_library.search_by_title("baby")).to eq []
  end
end