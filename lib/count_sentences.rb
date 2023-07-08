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
    self.split(/[.?!]+/).count
  end
end

"Hello.".sentence? # => true
"Is it raining?".question? # => true
"Wow!".exclamation? # => true
"This is a sentence. This is another sentence!".count_sentences # => 2
