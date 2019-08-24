class PigLatinizer

  def to_pig_latin(string)
    string.split(" ").map {|word| piglatinize(word)}.join(" ")
  end

  def piglatinize(string)
    vowels = "aeiou".chars
    new_word = string
    count = 0
    if new_word.downcase.chars.any? {|letter| vowels.include?(letter) }
      until vowels.include?(new_word[0].downcase)
        new_word = new_word[1..-1] + new_word[0]
        count += 1
      end
    end
    count == 0 ? new_word + "way" : new_word + "ay"
  end

end
