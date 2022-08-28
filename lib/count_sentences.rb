require 'pry'

class String

  def sentence?
    # if self.end_with?(".")
    # #   return true
    # # else
    # #   return false
    # end
    self.end_with?(".")
  end

  def question?
    if self.end_with?("?")
      return true
    else
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else
      return false
    end
  end

  def count_sentences
    sentence_array = self.split(/[\.\?\!]/)
    new_array = sentence_array = sentence_array.reject {|s| s == ""}
    new_array.size
  end
end