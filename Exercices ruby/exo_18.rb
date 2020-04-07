arr = []

for i in 1...51
  mail = "jean.dupont.#{"%02d" % i}@email.fr"
  arr.push(mail)
end

puts arr
