y = 0
while y <= i.size
  if i[y] == "i" || i[y] == "o" || i[y] == "a" || i[y] == "e" || i[y] == "y"
    return y
  end
  y += 1
end
return y
end

def calcul(i)
y = count_conson(i)
u = i[y..i.size]
if y != 0
  j = i[0..y-1]
end

uu = u.to_s
jj = j.to_s

return uu + jj + "ay"
end

def translate(i)
tab = []
tab = i.split
str = ""
y = 0
while y < tab.size
  if y == tab.size - 1
    str += calcul(tab[y])
    y += 1
  else
    str += calcul(tab[y]) + " "
    y += 1
  end
end
return(str)
end
