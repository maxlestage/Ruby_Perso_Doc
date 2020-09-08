


puts "Veuillez choisir un chiffre: "
chiffre = gets.chomp.to_i


# Pour faire une condition en Ruby on termine toujours par un 'end'
# if variableChiffre.estPaire?
if chiffre.even?
    # En Ruby pour rendre le code lisible on pense a mettre une tabulation par convention (un espace) 
    # afin de pouvoir différencier le code
    puts "Votre chiffre est paire"
else 
    puts "Votre chiffre est impaire"
end


