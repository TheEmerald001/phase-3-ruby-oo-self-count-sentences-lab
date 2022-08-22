require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false

    #Above is the refactored code below using the ternary in Ruby
    # if 
    #   self.end_with?(".")
    #   true
    # else
    #   false
    # end
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split(/\.|\?|\!/).filter { |sentence| !sentence.empty? }.size
  end
end