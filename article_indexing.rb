text_array = text.split(" ") #creates and assigns an array of each word in the title to text_array 
title_array = title.split(" ") #creates an array of each word in the text body

frequency_hash = Hash.new
frequency_hash.default = 0

important_words = Array.new

text_array.each do |word|
  word.chomp('.')
  if frequency_hash.has_key?(word)
    count = frequency_hash[word]
    frequency_hash[word] = count + 1
    frequency_hash.rehash
  else
    unique_words_array < word
    frequency_hash[word] = 1
  end
  
  if word == word.capitalize
    if !important_words.include?(word)
      important_words << word
    end
  end
end

ingnored_words = ['the', 'a', 'if', 'be', 'of', 'and', 'in', 'that', 'have', 'I', 'it', 'for', 'not', 'on', 'with', 'he', 'as', 'you', 'do', 'at', 'this', 'but', 'his', 'by']

ignored_words.each do |word|
  frequency_hash.delete(word)
end

frequency_hash.sort_by { |word, count| count }

