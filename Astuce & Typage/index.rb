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

