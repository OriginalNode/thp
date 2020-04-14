def echo(x)
 return x
end

def shout(x)
  return x.upcase
end

def repeat(x, y=2)
  array = []
  y.times { array << x }
 return array.join(" ")
end

def start_of_word(x, y)
  return x[0...y]
end

def first_word(x)
  return x.split.first
end

def titleize(x)
  words = x.split
  if words.length == 1
    words.first.capitalize
  else
    words.first.capitalize + " " + words[1...words.length].map { |word| word.length < 4 ? word : word.capitalize }.join(" ")
  end
end
