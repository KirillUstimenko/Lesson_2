=begin
alphabet_hash = {}
alphabet_range = ("А".."Я")
i = 0
alphabet_range.each do |alphabet_letter|
  alphabet_hash[alphabet_letter] = i += 1
end
puts alphabet_hash

vowel_hash = {}
vowel_arr = ["А", "Е", "И", "О", "У", "Ы", "Э", "Ю", "Я"]
vowel_arr.each do |vowel_letter|
  vowel_hash[vowel_letter] = alphabet_hash[vowel_letter]
end
puts "Хеш гласных:"
puts vowel_hash

=end

#UPDATE
vowel_hash = {}
alphabet_range = ("А".."Я")
vowel_arr = ["А", "Е", "И", "О", "У", "Ы", "Э", "Ю", "Я"]
i = 0
alphabet_range.each.with_index(1) do |letter, index_letter|
  if letter == vowel_arr[i]
    vowel_hash[letter] = index_letter
    i += 1
  end
end
puts "Хеш гласных:"
puts vowel_hash
