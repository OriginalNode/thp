puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
stairs = gets.chomp.to_i

diese = "#"

puts "Voici la pyramide :"

i = 0

while i != stairs
  puts diese.rjust(stairs + 1)
  diese = diese + "#"
  i = i + 1
end
