class PigLatinizer

  def piglatinize(input_string)
    consonants = /\A[bcdfghjklmnpqrstvwxyz]+/i

    if input_string.length < 2
      input_string + "way"
    else
      if consonants.match(input_string)
        beginning_consonants = consonants.match(input_string)[0]
        input_string.slice!(beginning_consonants)
        input_string = input_string + beginning_consonants + "ay"
      else
        input_string + "way"
      end
    end
  end

  def to_pig_latin(input_string)
    words_array = input_string.split(" ")

    new_words = words_array.map do |word|
      piglatinize(word)
    end

    new_words.join(" ")
  end
end
