class DiaryEntry
  def initialize(title, contents) # title, contents are strings
   @title = title
   @contents = contents
   @furthest_word_read = 0
  end

  def title
    @title
  end

  def contents
    @contents
  end

  def count_words
  words.length
  ##words is a prv method
  end

  def reading_time(wpm) 
    fail "Please provide your reading speed" unless wpm > 0
  (count_words / wpm.to_f).ceil
  end

  def reading_chunk(wpm, minutes) 
    # [0,2] =>> 0 is where the array starts, 2 is the total length of array
    #so in "one two three" =>  one, two
    fail "Please provide your reading speed" unless wpm > 0
    fail "Please provide your reading time" unless minutes > 0
   words_we_can_read = wpm * minutes
   start_from = @furthest_word_read
   end_at = @furthest_word_read + words_we_can_read 
   word_list = words[start_from, end_at]
   if end_at >= count_words
    @furthest_word_read = 0
   else
   @furthest_word_read = end_at
   end
   return word_list.join(" ")
  end

  private 
  def words
    @contents.split(" ")
  end

end