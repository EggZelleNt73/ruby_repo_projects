def substrings(word, dictionary)
  sub_hash = Hash.new(0)
  word = word.downcase

  dictionary.each do |sub_str|
    if word.include?(sub_str)
      occurences = word.scan(sub_str)
      sub_hash[sub_str.to_sym] += occurences.length
    end
  end

  return sub_hash
end

word = "Howdy partner, sit down! How's it going?"
dictionary = ["Below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
hast_table = substrings(word, dictionary)

hast_table.select{|key, value| puts "#{key} => #{value}"}
