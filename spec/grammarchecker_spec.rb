require 'grammarchecker'


RSpec.describe GrammarStats do
  context "checks if text is gramatically correct" do
    it "returns true if starts with upper case and ends with punctuation mark" do
      grammarchecker = GrammarStats.new
      result = grammarchecker.check("Hello world!")
      expect(result).to eq true
end
end
it "returns false if text is not grammatically correct" do
  grammarchecker = GrammarStats.new
  result = grammarchecker.check("Hello world")
  expect(result).to eq false
end
it "returns false if text is an empty string" do
  grammarchecker = GrammarStats.new
  result = grammarchecker.check("")
  expect(result).to eq false
end
it "returns percentage of grammatically correct text" do
  grammarchecker = GrammarStats.new
  grammarchecker.check("hello world")
  grammarchecker.check("Hello world!")
  expect(grammarchecker.percentage_good).to eq 50
end
it "returns percentage of grammatically correct text" do
  grammarchecker = GrammarStats.new
  grammarchecker.check("hello world")
  grammarchecker.check("hello world")
  grammarchecker.check("hello world")
  expect(grammarchecker.percentage_good).to eq 0
end
end