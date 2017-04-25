class PigLatinizer

  def piglatinize(word)
    if word.index(/[aeiouAEIOU]/) == 1
      word.split("").rotate.join.concat("ay")
    elsif word.length == 1
      word.concat("way")
    elsif word.index(/[aeiouAEIOU]/) == 0
      word.concat("way")
    else
      word.split("").rotate(word.index(/[aeiouAEIOU]/)).join.concat("ay")
    end
  end

  def to_pig_latin(phrase)
    p_s = phrase.split(" ").collect do |word|
      piglatinize(word)
    end
    p_s.join(" ")
  end

end
