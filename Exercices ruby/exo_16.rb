puts "Quelle est ton année de naissance ?"
year = gets.chomp
t = Time.now
i = Integer(year)

for i in Integer(year)...t.year
  puts "Il y a #{i} tu avais #{i - Integer(year)} ans"
  i = i + 1
end

