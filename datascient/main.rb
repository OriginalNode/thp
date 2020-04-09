require "./lib/00_journalists.rb"

puts "Bonjour que souhaitez vous analyser ?"

print "1 - Combien y a-t-il de journalistes dans ce array ?\n
2 - Combien d'handle contiennent un numéro ?\n
3 - Combien d'handle contiennent les 4 lettres du prénom \"Aude\" à la suite (sans prendre en compte les majuscules) ?\n
4 - Combien commencent par une majuscule (première lettre juste après le @) ?\n
5 - Combien contiennent au moins une majuscule ?\n
6 - Combien y a-t-il de underscore _ dans tous les pseudos confondus ?\n
7 - Trie la liste de handle par ordre alphabétique.\n
8 - Quels sont les 50 handles les plus courts de ce array ?\n
9 - Quelle est la position dans l'array de la personne @epenser ?\n
\n
> "

choice = gets.chomp

a = 0

def handleNumb(tab)
  a = 0
  for i in tab
    if i.index(/[1234567890]/) != nil
      a = a + 1
    end
  end
  return a
end

def audeCheck(tab)
  a = 0
  for i in tab
    i = i.downcase
    if i.include? "aude"
      a = a + 1
    end
  end
  return a
end

def upercase(tab)
  a = 0
  for i in tab
    if i.slice(1).upcase == i.slice(1)
      a = a + 1
    end
  end
  return a
end

def countUpercase(tab)
  a = 0
  for i in tab
    if i.scan(/[A-Z]/).length != 0
      a = a + 1
    end
  end
  return a
end

def countUnderscore(tab)
  a = 0
  for i in tab
    a = a + i.scan(/[_]/).count
  end
  return a
end

case Integer(choice)
when 1
  puts "Il y a #{JOURNAL.count()} journalistes dans cette liste"
when 2
  puts "Il y a #{handleNumb(JOURNAL)} journalistes qui ont un numéro dans le handle"
when 3
  puts "Il y a #{audeCheck(JOURNAL)} journalistes qui contiennent le nom Aude"
when 4
  puts "Il y a #{upercase(JOURNAL)} journalistes qui débutent par une majuscule"
when 5
  puts "Il y a #{countUpercase(JOURNAL)} handle journalistes qui contiennent une majuscule"
when 6
  puts "Il y a #{countUnderscore(JOURNAL)} handle journalistes qui contiennent une majuscule"
when 7
  puts "Voici la liste des journalistes triée par ordre alphabétique:\n #{JOURNAL.sort}"
when 8
  puts "Voici la liste des 50 handles les plus courts:\n #{JOURNAL.sort}"
else
  
end
