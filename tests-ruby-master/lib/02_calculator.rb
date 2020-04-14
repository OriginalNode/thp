def time_string(sec)

  h = 0
  min = 0

  if sec > 3600 #on dit que sec devien en heure vue que 3600 et egal a une heure
    h = sec/3600
  end

  sec = sec - (h*3600)
  if sec > 60
    min = sec/60
  end

  sec = sec - (min*60)
  if h  < 10
    h = "0"+ h.to_s
  elsif h == 0
    h = "00"
#  else
  #  h = h.to_s
  end

  if min < 10 #dans se cas on met en string si min a un chiffre on met un zero
    min = "0"+ min.to_s
  elsif min == 0#si min = 0 on met de 00
    min = "00"
  else
    min = min.to_s
  end

  if sec < 10#dans se cas on met en string si sec a un chiffre on met un zero
    sec = "0"+ sec.to_s
  elsif sec == 0
    sec = "00"
  else
    sec = sec.to_s
  end
  return "#{h}:#{min}:#{sec}"
  #sa fait comme resultat 00:00:00 si a chaque resultat cela est egal a zero
end
