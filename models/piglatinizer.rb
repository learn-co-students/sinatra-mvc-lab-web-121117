class PigLatinizer

  attr_accessor :user_phrase



  def piglatinize(word)
    if word =~ (/\A[aeiou]/i)
      word = word + 'way'
    elsif word =~ (/\A[^aeiou]/i)
      match = /\A[^aeiou]+/i.match(word)
      word = match.post_match + match.to_s + 'ay'
    end
    word
  end


  def to_pig_latin(string)
    word_array = string.split(" ")
    pig_array = word_array.map {|word| self.piglatinize(word) }
    pig_array.join(" ")
  end

end
