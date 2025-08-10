def substrings(word, dictionary)
  sub_hash = Hash.new(0)

  dictionary.each do |sub_str|
    if word.include?(sub_str.downcase)
      sub_hash[sub_str] += 1
    end
  end

  return sub_hash
end

word = "Howdy partner, sit down! How's it going?"
dictionary = ["Below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
hast_table = substrings(word, dictionary)

hast_table.select{|key, value| puts "#{key} => #{value}"}
