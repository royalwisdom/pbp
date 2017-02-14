text_array = text.split(" ") #creates and assigns an array of each word in the title to text_array 
title_array = title.split(" ") #creates an array of each word in the text body

unique_words_array = Array.new
frequency_hash = Hash.new
frequency_hash.default = 0

text_array.each do |word|
  i = unique_words_array.index(word)
  if i.nil?
    unique_words_array < word
    frequency_hash[word] = 1
  else
     count = frequency_hash[word]
     frequency_hash[word] = count + 1
  end
end
