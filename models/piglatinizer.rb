class PigLatinizer
  
  attr_accessor :phrase
  
  def initialize(phrase)
    @phrase = phrase.downcase
  end
  
  def translate(phrase)
    words = phrase.split(" ")
    alphabet = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alphabet - vowels
    
    if vowels.include?(phrase[0])
      input + 'ay'
    elsif consonants.include?(phrase[0]) && consonants.include?(phrase[1])
      phrase[2..-1] + phrase[0..1] + 'ay'
    elsif consonants.include?(phrase[0])
      phrase[1..-1] + phrase[0] + 'ay'
    else
      phrase
    end
  end
  
end