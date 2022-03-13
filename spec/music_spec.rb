# As a user
# So that I can keep track of my music listening
# I want to add tracks I've listened to and see a list of them.

require 'music'

RSpec.describe Music do
  it "adds tracks to the list" do
    tracks = Music.new
    tracks.add("my song1")
    expect(tracks.list).to eq ["my song1"]
end
context "if empty string given" do
it "it asks user for the track" do
  tracks = Music.new
  expect(tracks.add("")).to eq "Please provide your track"
end
end
end