puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
print "> "
stairs = gets.chomp.to_i

diese = "#"

puts "Voici la pyramide :"

for i in 0..stairs
  puts diese
  diese = diese + "#"
end
