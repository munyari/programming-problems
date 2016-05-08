class Phrase
  VERSION = 1
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def remove_quotes(str)
    if str[0] == str[-1] && str[0] == "'"
      str = str[1..-2]
    else
      str
    end
  end

  def word_count
    word_hash = Hash.new(0)
    text.split(/[\s\.:,!&@$%\^]+/).each do |str|
      word = remove_quotes(str).downcase
      word_hash[word] += 1 unless word.empty?
    end
    word_hash
  end
end
