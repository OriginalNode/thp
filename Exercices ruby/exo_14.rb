puts "Merci d'inscrire un nombre"
nb = gets.chomp.to_i

for i in 0..nb
  puts nb - i
  i = i +1
end

