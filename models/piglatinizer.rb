class PigLatinizer

    attr_accessor :phrase

    def initialize(phrase)
        @phrase = phrase.downcase
    end

    def translate(phrase)
      vowels = ["a", "e", "i", "o", "u"]
      two_letter_consonants = ["ch", "sh", "qu", "th", "br"]
      three_letter_consonants = ["thr", "sch", "squ"]
    
      words = phrase.split(" ")
      result = [];
        
      words.each do |word|
        if vowels.include? word[0]
            result.push word << 'ay'
        else
          if three_letter_consonants.include? word[0] + word[1] + word[2]
            first_three_letters = word.slice!(0,3)
            result.push word << first_three_letters << 'ay'                    
        elsif  two_letter_consonants.include? word[0] + word[1]
          first_two_letters = word.slice!(0,2)
          result.push word << first_two_letters << 'ay'                    
        else
          first_letter = word.slice!(0)
          result.push word << first_letter << 'ay'
        end       
      end  
    end 
    return result.join(" ")    
  end
end