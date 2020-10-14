#############                                             Astuce & Typage 


# Les conditions avec la méthode "case" 

cmd = gets.chomp

case cmd 
when "add"
    puts "Ajouter un produit"
when "rm"
    puts "Suppression d'un produit"
# Et on fini par else 
else
    puts "Commande inconnu"
end

# Les conditions ternaires 


puts a < b ? "a est inférieur à B" : "a est supérieur ou égal à B"

# Cette condition a donc l'avantage de ne tenir que sur une seule ligne 
# Cette même condition pourrait également s'écrire de cette facon : 

if a < b 
    puts "a est inférieur à B"
else 
    puts "a est supérieur ou égal à B"
end

# Ici nous pouvons noter que le signe ":" correspond à un "else", il se traduira par un "sinon". 

######################################################################################################################## 

a = false
b = "Salut!"

puts a||b 

#=> ici il affichera "a" "ou ||" "b"
# si "a" est faux alors il affichera "b"
# "a" étant une variable définit comme un bouléen false il affichera "b"

a = "false"
b = "Salut!"

puts a||b 



######################################################################################################################## 

# faire un assignement avec un "ou" "||"

# On créer une variable "a" 

a = false
a ||= "valeur par défaut"
puts a

#=> a nous retourne alors "valeur par défaut"


a = "chien"
a ||= "valeur par défaut"
puts a

#=> a nous retourne alors "chien"

##### Explication :
# Si a n'est pas déclaré avant, il nous affichera sa valeur. 
# Si a est déclaré précédement c'est la valeur par défaut qui sera affiché. 
# Le raisonnment = si "a" est déjà définit, je ne fais pas ça. 



