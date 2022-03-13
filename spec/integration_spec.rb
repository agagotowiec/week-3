require 'music_library'
require 'track'

RSpec.describe 'integration' do
  it "adds tracks to the music library" do
  music_library = MusicLibrary.new
  track1 = Track.new("Snow", "RHCP")
  track2 = Track.new("Californication", "RHCP")
  music_library.add(track1)
  music_library.add(track2)
  expect(music_library.all).to eq [track1, track2]
end
context "with added tracks" do
it "searches for the tracks by full title" do
  music_library = MusicLibrary.new
  track1 = Track.new("Snow", "RHCP")
  track2 = Track.new("Californication", "RHCP")
  music_library.add(track1)
  music_library.add(track2)
  result = music_library.search_by_title("Snow")
  expect(result).to eq [track1]
end
it "searches for the tracks by partial title" do
  music_library = MusicLibrary.new
  track1 = Track.new("Snow", "RHCP")
  track2 = Track.new("Californication", "RHCP")
  music_library.add(track1)
  music_library.add(track2)
  result = music_library.search_by_title("Sn")
  expect(result).to eq [track1]
end
context "when no tracks matching"
it "returns an empty list" do
  music_library = MusicLibrary.new
  track1 = Track.new("Snow", "RHCP")
  music_library.add(track1)
  result = music_library.search_by_title("Baby")
  expect(result).to eq []
end
end
end