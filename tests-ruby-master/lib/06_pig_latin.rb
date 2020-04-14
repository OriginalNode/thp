def translate(words)
  words.split.map { |word| trans_word(word) }.join(" ")

end

def trans_word(word)
  if word.match(/^[aiueo]/)
    word + "ay"
  elsif word.match(/^qu/)
    word[2...word.length] + "quay"
  elsif word.match(/^.?qu/)
    word[3...word.length] + word[0] + "quay"
  elsif word[1].match(/[aiueo]/)
    word[1...word.length] + word[0] + "ay"
  elsif word[2].match(/[aieuo]/)
    word[2...word.length] + word[0..1] + "ay"
  else
    word[3...word.length] + word[0..2] + "ay"
  end
end
