vowel_hash = {}
alphabet_range = ("А".."Я")
vowel_arr = ["А", "Е", "И", "О", "У", "Ы", "Э", "Ю", "Я"]

alphabet_range.each.with_index(1) do |letter, index_letter|
  vowel_hash[letter] = index_letter if vowel_arr.include?(letter)
end
puts "Хеш гласных:"
puts vowel_hash
