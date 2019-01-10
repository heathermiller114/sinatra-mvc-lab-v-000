class PigLatinizer

    attr_accessor :phrase

    def initialize(phrase)
        @phrase = phrase.downcase
    end

    def translate
