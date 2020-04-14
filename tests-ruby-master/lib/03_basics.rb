def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    return "nil detected"
  elsif (a > b) & (a > c)
    return "a is bigger"
  elsif (b > a) & (b > c)
    return "b is bigger"
  else (c > b) & (c > a)
    return "c is bigger"
  end
end

def reverse_upcase_noLTA(string)
  return string.reverse.upcase.delete "L" "T" "A"
end

def array_42(array)
  array.include?(42)
end

def magic_array(array)
  # - flattened (i.e. no more arrays in array)
  # - sorted
  # - with each number multiplicated by 2
  # - with each multiple of 3 removed
  # - with each number duplicate removed (any number should appear only once)
  # - sorted
  array.flatten.sort.map {|x| x * 2 } .delete_if {|x| x % 3 == 0 } .uniq.sort
end
