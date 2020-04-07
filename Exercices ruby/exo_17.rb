puts "Quelle est ton année de naissance ?"
year = gets.chomp
t = Time.now
i = Integer(year)

for i in Integer(year)...t.year
  if ((t.year - i) == (i - Integer(year)))
    then puts "Ton age egal"
    else puts "Il y a #{t.year - i} tu avais #{i - Integer(year)} ans"
  end
  i = i + 1
end

