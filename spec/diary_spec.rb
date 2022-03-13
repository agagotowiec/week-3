require 'diary'

RSpec.describe DiaryEntry do
  it "constructs diary entry" do
    diary = DiaryEntry.new("title", "contents")
    expect(diary.title).to eq "title"
    expect(diary.contents).to eq "contents"
end
it "counts words" do
  diary = DiaryEntry.new("title", "My first entry")
  expect(diary.count_words).to eq 3
end
end
context "given 200 words user can read per minute" do
it "returns reading time" do
  diary = DiaryEntry.new("title", "one " * 550)
  expect(diary.reading_time(200)).to eq 3
end
end
context "given 0 wpm" do
  it "fails" do
    diary = DiaryEntry.new("title", "one two three")
    expect { diary.reading_time(0) }.to raise_error "Please provide your reading speed"
  end
  end
  describe "reading_chunk" do
  context "given contents readable withing given time" do
    it "returns the full contents" do
      diary = DiaryEntry.new("title", "one two three")
      chunk = diary.reading_chunk(200, 1)
      expect(chunk).to eq "one two three"
    end
    end
    context "given 0 wpm" do
      it "fails" do
        diary = DiaryEntry.new("title", "one two three")
        expect { diary.reading_chunk(0, 5) }.to raise_error "Please provide your reading speed"
      end
      end
      context "given 0 minutes" do
        it "fails" do
          diary = DiaryEntry.new("title", "one two three")
          expect { diary.reading_chunk(200, 0) }.to raise_error "Please provide your reading time"
        end
        end
    context "given contents unreadable withing given time" do
      it "returns part of contents" do
        diary = DiaryEntry.new("title", "one two three")
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end
      end
      it "returns next chunk next time we are asked" do
        diary = DiaryEntry.new("title", "one two three")
        diary.reading_chunk(2, 1)
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq "three"
      end
      it "restarts after reading the whole contents" do
        diary = DiaryEntry.new("title", "one two three")
        diary.reading_chunk(2, 1)
        diary.reading_chunk(2, 1)
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end
      it "restarts if it finishes exactly on the end" do
        diary = DiaryEntry.new("title", "one two three")
        diary.reading_chunk(2, 1)
        diary.reading_chunk(1, 1)
        chunk = diary.reading_chunk(2, 1)
        expect(chunk).to eq "one two"
      end
    end
