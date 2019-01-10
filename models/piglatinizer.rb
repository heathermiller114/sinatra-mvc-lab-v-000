class PigLatinizer

  attr_accessor :phrase

  def initialize(phrase)
      @phrase = phrase.downcase
  end

  def pig_latin_string
    words = phrase.split(" ")
    p = words.map {|word| pig_latin_word(word)}
    p.join(" ")
  end
  
  def pig_latin_word(word)
    first_letter = word[0].downcase
    
    if ['a', 'e', 'i', 'o', 'u'].include?(first_letter)
      "#{word}way"
    else
    
      