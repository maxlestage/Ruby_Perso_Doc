# Tp 
# Ici nous allons créer un système capable de detecter un Palindrome
# Pour la petite définition: 

# Mot ou groupe de mots qui peut se lire indifféremment de gauche à droite ou de droite à gauche en gardant le même sens 
# (ex. la mariée ira mal ; Roma Amor).


# Les données pour mettre en oeuvre l'exercice 

# 1 Demander un mot à un utilisateur 
# 2 Stocker le mot dans une variable 
# 3 Créer un variable pour inverser le mot 
# 4 Vérifier si le mot inversé == mot tapé 

puts "Veuillez choisir un mot : "

mot = gets.chomp 

inverti = mot.reverse

if inverti == mot 
    puts "Ce mot est un Palindrome"
else
    puts "Ce mot n'est pas un palindrome"
end

# si je tape kayak et que kayak.reverse est égale a kayak c'est un palindrome