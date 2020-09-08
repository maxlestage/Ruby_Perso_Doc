# Les données pour mettre en oeuvre l'exercice 

# 1 Demander un mot à un utilisateur 
# 2 Stocker le mot dans une variable 
# 3 Créer un variable pour inverser le mot 
# 4 Vérifier si le mot inversé == mot tapé 

puts "Veuillez choisir un mot : "

# Explication de la ligne 
# variable mot = on récupère "le mot choisit par l'utilisateur", on "retire les caractères speciaux" et on le passe "en minuscule ""
#                                 "gets"             .                   "chomp"               .                  "downcase
mot = gets.chomp.downcase

if mot.reverse == mot 
    puts "Ce mot est un Palindrome"
else
    puts "Ce mot n'est pas un palindrome"
end



# si je tape kayak et que kayak.reverse est égale a kayak c'est un palindrome



