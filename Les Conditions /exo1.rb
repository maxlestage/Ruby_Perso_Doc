
# On va faire un script nous permettant de deviner un chiffre choisit 

=begin 
puts "Veuillez choisir un chiffre: "
chiffre = gets.chomp.to_i
adeviner = 15 
=end

# Lorsque l'utilisateur rentre son chiffre, il s'attend donc a un indice suivant sa réponse, si la valeur est exact, si elle est trop haute ou trop basse

# On va donc utiliser les comparaisons 

# Exemple :

# a == b // On test alors que 'a' est identique à la valeur de 'b'

# a > b // On test alors que 'a' est strictemetn supérieur à la valeur de 'b'

# a >= b // On test alors que 'a' est strictemetn supérieur ou égal à la valeur de 'b'

#  a < b // On test alors que 'a' est strictemetn inférieur à la valeur de 'b'

# a != b // On test alors que 'a'  est différent de la valeur de 'b'

puts "Veuillez choisir un chiffre: "
chiffre = gets.chomp.to_i
adeviner = 15

if chiffre < adeviner 
    puts "Le chiffre #{chiffre} est trop petit"

elsif chiffre > adeviner 
    puts "Le chiffre #{chiffre} est trop grend"

else     
    puts "Bravo #{chiffre} est le bon chiffre!"
end


# Il faut penser à se relire le ruby est un langage simple syntaxiquement.  