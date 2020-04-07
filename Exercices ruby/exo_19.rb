arr = []

for i in 1...51
  mail = "jean.dupont.#{"%02d" % i}@email.fr"
  arr.push(mail)
end

for i in arr
  if i[12,2].to_i%2==0
    puts i
  end
end
