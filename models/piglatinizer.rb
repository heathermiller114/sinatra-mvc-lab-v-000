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
    
    
      