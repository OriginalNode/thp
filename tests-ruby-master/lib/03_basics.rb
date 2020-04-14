def who_is_bigger(a, b, c)
  if a == nil || b == nil || c == nil
    "nil detected"
    #on dit que dans le cas ou a,b,c et nul on renvoie nul
  else
    if a > b && a > c
      "a is bigger"
  #on dit que si a et plus grand b et que a est plus grand que c on envoie a is bigger
    elsif b > a && b > c
      "b is bigger"
    else
      "c is bigger"
    end
  end
end

def reverse_upcase_noLTA(string)
  string.reverse.upcase.tr!("LTA","")
  # Reverse, upcase then removes all L, T and A.
  # Hint: google ruby string
  #je fait une string que j'inverse le upcase permet de mettre en majuscule
  #Traduit str en place, en utilisant les mêmes règles que String # tr. Renvoie str ou nil si aucune modification n'a été apportée.
end

def array_42(arr)
  arr.any?{|element| element == 42}
  #any? [{ |obj| block }] → true or false
end

def magic_array(arr)
  arr.flatten.uniq.delete_if{|e| e % 3 == 0}.map{|e| e*2}.sort
  #flatten retourne en nouveau tableau sous forme recursive
  #Autrement dit, pour chaque élément qui est un tableau, extrayez ses éléments dans le nouveau tableau. Si l'argument optionnel level détermine le niveau de récursion à aplatir.
  # uniq Retourne un nouveau tableau en supprimant les valeurs en double dans self. Si un bloc est donné, il utilisera la valeur de retour du bloc pour la comparaison.
  #a = [ "a", "b", "c" ]
#a.delete_if {|x| x >= "b" }   #=> ["a"]
#[1, 2, 3].map { |n| n * 2 } # => [2, 4, 6] permet de parcourir chaque ellement du tableaux et modifié le resultat
end
