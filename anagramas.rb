def canonical(word)
  word.split("").sort 
end

def are_anagram?(word1, word2)
  canonical(word1) == canonical(word2)     
end

p are_anagram?("arma", "rama")
p are_anagram?("roma", "omar")
p are_anagram?("volar", "omar")

def anagrams_for(word, diccionario)
  anagrams = []

  diccionario.each do |dicc|
    if are_anagram?(word, dicc)
      anagrams.push(dicc)
    end 
  end
  anagrams
end

p anagrams_for("arma", ["rama", "nota", "amar", "persona"])