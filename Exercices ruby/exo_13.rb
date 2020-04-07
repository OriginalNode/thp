puts "Hello quelle est ton année de naissance ?"
year = gets.chomp
t = Time.now
i = Integer(year)

for i in Integer(year)..t.year
  puts i
  i = i + 1
end
