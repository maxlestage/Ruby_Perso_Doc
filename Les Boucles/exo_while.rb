# * Stocker un chiffre à deviner 
#   * tant que l'utilisateur ne devine pas le chiffre 
#       * on lui demande de rentrer un chiffre 

# Danc cette boucle while on utilise un if elsif et pour que notre code fonctionne il faut pensé à fermer notre code en utilisant end 
# on met end directement lorsqu'on ouvre un while comme ça on l'oublie pas et le if fait également toujours suivre son end, donc si on utilise un if on pense directement a ajouter un end à la suite. 

mind = 15

user = 0

while user != mind 
    puts " Entrez votre chiffre : "
        user = gets.chomp.to_i 
    if user > mind 
        puts "Le chiffre choisit est supérieur"
            
    elsif user < mind 
        puts "Le chiffre choisit est inférieur"
    end
end
puts "Vous avez deviné le bon chiffre!"