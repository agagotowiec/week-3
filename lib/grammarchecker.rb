class GrammarStats
  def initialize
  @count = 0
  @correct = 0
  end

  def check(text) 
    upper_case =  ("A".."Z").include?(text[0])

    punctuation_mark = text[-1] == "." || text[-1] == "!" || text[-1] == "?"

   if upper_case and punctuation_mark
    @correct += 1
    @count += 1
    return true
   else
    @count += 1
    return false
   end
  end

  def percentage_good
  (@correct / @count.to_f) * 100
  end
end