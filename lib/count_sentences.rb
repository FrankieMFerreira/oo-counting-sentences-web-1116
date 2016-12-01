require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
     new_sentence = self.squeeze("!")
     new_sentence.split(/[!?.]/).delete_if {|word| word == "," }.length
  end
end
