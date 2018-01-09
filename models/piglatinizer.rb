class PigLatinizer

  def piglatinize(word)

    if word[0].downcase.match(/[aeiou]/)
      pig_word = word + "way"
    elsif word[0].downcase.match(/[bcdfghjklmnpqrstvxz]/) && word[1].downcase.match(/[bcdfghjklmnpqrstvxz]/) &&
    word[2].downcase.match(/[bcdfghjklmnpqrstvxz]/)
        pig_word = word[3..-1] + word[0..2] + "ay"
    elsif word[0].downcase.match(/[bcdfghjklmnpqrstvxz]/) && word[1].downcase.match(/[bcdfghjklmnpqrstvxz]/)
      pig_word = word[2..-1] + word[0]+ word[1] + "ay"
    elsif word[0].downcase.match(/[bcdfghjklmnpqrstvxz]/)
      pig_word = word[1..-1] + word[0] + "ay"
    end
  end
  def to_pig_latin(string)
    sentence_to_pigify = string.split(" ")
    pigified_words = sentence_to_pigify.map do |word|
      piglatinize(word)
    end
    pigified_words.join(" ")
  end

end
