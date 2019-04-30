class PigLatinizer
attr_accessor :text 
  
    
    def piglatinize(text)
      word_ary = text.split(" ")
      w = word_ary.map{|word| pig_word(word)}
      w.join(" ")
    end
    
    def pig_word(word)
      vowels = ["a", "e", "i", "o", "u"]
      consonants = []
      if vowels.include?(word[0].downcase)
        "#{word}way"
      else
        consonants << word[0]
        if !vowels.include?(word[1].downcase)
          consonants << word[1].downcase
          if !vowels.include?(word[2].downcase)
            consonants << word[2].downcase
          end
          # binding.pry
        end
        "#{word[consonants.length..-1] + consonants.join+"ay"}"
      end
    end
   
  
end