#                                                      LES BOUCLES

#                                                   La boucle ' for '


# NB : On utilse ici un next pour shunter la boucle si l'action est bonne a un moment T contenu dans les coups d'essais ici on a 3 chances 


adeviner = 4
a = nil 
for num in 1..3
    next if a == adeviner
    puts "Entrez votre chiffre: "
    a = gets.chomp.to_i
        if a > adeviner
            puts "La valeur est supérieur"
        elsif a < adeviner 
            puts "La valeur est inférieur"    
        end
end

puts "Bravo tu as deviné" if a == adeviner


