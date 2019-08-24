class PigLatinizer

  def piglatinize(string)
    words = string.split(" ")
    latinized = words.map do |word|
      if word[0].downcase.match(/[aeiou]/)
        word + "way"
      else
        new_word = word.chars
        while !new_word[0].downcase.match(/[aeiou]/)
          first_letter = new_word[0]
          new_word.shift
          new_word << first_letter
        end
        new_word.join('') + "ay"
      end
    end
    latinized.join(' ')
  end

  def to_pig_latin(string)
    words = string.split(" ")
    latinized = words.map do |word|
      if word[0].downcase.match(/[aeiou]/)
        word + "way"
      else
        new_word = word.chars
        while !new_word[0].downcase.match(/[aeiou]/)
          first_letter = new_word[0]
          new_word.shift
          new_word << first_letter
        end
        new_word.join('') + "ay"
      end
    end
    latinized.join(' ')
  end
end
