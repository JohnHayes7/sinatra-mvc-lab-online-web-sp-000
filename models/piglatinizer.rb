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
      if vowels.include?(word[0])
        "#{word}way"
      else
        consonants << word[0]
        if !vowels.include?(word[1])
          consonants << word[1]
          if !vowels.include?(word[2])
            consonants << word[2]
          end
          # binding.pry
        end
        "#{word[consonants.length..-1] + consonants.join + "ay"}"
      end
    end
   
  
end