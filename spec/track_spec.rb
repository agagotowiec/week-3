require 'track'

RSpec.describe Track do
  it "constructs" do
    track = Track.new("Snow", "RHCP")
    expect(track.title).to eq "Snow"
    expect(track.artist).to eq "RHCP"
  end
  it "adds title and artist to the list and returns it in the formatted string" do
    track = Track.new("Snow", "RHCP")
    expect(track.format).to eq "Snow by RHCP"
  end
  context "given an empty string instead title or artist" do
  it "asks user for the title and the artist" do
    track = Track.new("", "")
    expect(track.format).to eq "Please provide title and the artist"
  end
end
end