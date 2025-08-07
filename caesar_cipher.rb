def caesar_cipher(text, shift)
  new_word = ""
  text.each_char do |ch|
    if ch.match?(/\A[a-zA-Z]\z/)
      base = ch =~ /[A-Z]/ ? 'A'.ord : 'a'.ord
      letter = (((ch.ord - base + shift) % 26) + base).chr
      new_word += letter
    else
      new_word += ch
    end
  end

  return new_word
end

word = caesar_cipher("Bmfy f xywnsl!", 5)
puts(word)