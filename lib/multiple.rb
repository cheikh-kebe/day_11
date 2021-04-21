def is_multiple_of_3_or_5?(current_number)
  current_number % 3 == 0 || current_number % 5 == 0 ? true : false
end

def sum_of_3_or_5_multiples(final_number)
  if !final_number.is_a? Integer 
    return "Yo ! Je ne prends que les entiers naturels. TG"
   elsif final_number < 0
    return "Yo ! Je ne prends que les entiers naturels. TG"
   else
    final_sum = 0 #cette variable est la somme finale qui sera retournée. Ici on l'initialise à zéro

  (0..(final_number-1)).each do |current_number|
    
    if is_multiple_of_3_or_5?(current_number) == true 
      final_sum = final_sum + current_number
      current_number +=1 # si la réponse est "true", alors je rajoute la valeur de "current_number" à la variable "final_sum".
    else 
      current_number +=1
    end
  end
end
  return final_sum #on retourne la variable qui contient la somme du tout
end
puts sum_of_3_or_5_multiples(-1)
