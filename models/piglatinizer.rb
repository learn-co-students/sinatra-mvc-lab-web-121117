

class PigLatinizer
  attr_accessor :text

  def initialize

  end

  def piglatinize(text)
    text_down = text.downcase
    text_split = text_down.split('')
    vowels = %w[a e i o u]
    result = ''
    if vowels.include?(text_down[0]) && text_down[text.length] == "y"
      result = text
    else
      text_split.each_with_index.map do |letter, i|
        if vowels.include?(letter)
          if i == 0
            return result = text + 'way'
          else
            return result = text[i..(text.length)] + text[0..(i-1)] + 'ay'
          end
        end
      end
    end
    result
  end

  def to_pig_latin(string)
    string.split(' ').map { |word| piglatinize(word) }.join(" ")
  end

end
