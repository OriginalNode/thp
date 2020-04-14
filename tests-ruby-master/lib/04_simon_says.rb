def echo(debut)
  return debut
end

def shout(debut)
  return debut.upcase
end

def repeat(word, *copy)
  if copy[0] == nil
  return "#{word}" + " " + "#{word}"
else
  return "#{word} " + "#{word} " + "#{word}"
end
end

def start_of_word(string, number)
  string.slice(0,number)
end


def first_word(string)
  string.split.first
end

def titleize(string)
  string.scan(/\w+/).map.with_index do|c, i|

    if i != 0 && c == "the" || c == "and"
      c.downcase
    else
      c.capitalize
    end

  end
  .join(" ")

end
