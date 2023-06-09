class Phrase
  def initialize(phrase)
    @phrase = phrase
  end

  def word_count
    scan_phrase.each_with_object(Hash.new(0)) { |word, hash| hash[word] += 1 }
  end

  private

  def scan_phrase
    @phrase.downcase.scan(/\b[\w']+\b/)
  end
end
