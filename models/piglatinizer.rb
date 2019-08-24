class PigLatinizer
  attr_accessor :words

  def initialize
    @words = []
  end

  def to_pig_latin(phrase)
    @words = phrase.split(" ")
    @words.map! do |word|
      piglatinize(word)
    end
    @words.join(" ")
  end

  def piglatinize(word)
    # binding.pry
    if word.start_with?('a','e','i','o','u','A','E','I','O','U')
      return word += "way"
    end
    until word.start_with?('a','e','i','o','u','A','E','I','O','U')
      first = word.slice!(0)
      word += first
    end
    word += "ay"
  end
end