

text = "Un poète est quelqu'un qui dit ou écrit un ou plusieurs poèmes. C'est donc une personne qui possède l'art de combiner les mots, les sonorités, les rythmes pour évoquer des images, suggérer des sensations, des émotions."

# Créer un hash pour stocker les mots
#   obtenir un tableau des mots de notre texte pour espacer les mots on utilise :a méthode (split()) 
#       Intégrer le tableau précédent 
#           Remplir le hash 
#               Afficher les informations

## Organiser les mots les plus fréquents 











#   On commence par créer un hash pour stocker les mots 
# Pour créer un hash :

# Notre Var frequence égal hashVide 

# On peut déclarer notre Hash de deux façon:  frequence = Hash.new(0) ou bien : frequence = {}

frequence = Hash.new(0)
mots = text.downcase.tr('.,¨:','').split(' ')
# puts mots.inspect
# On voit qu'il nous rend un tableau contenant tous les éléments : 
# => ["Un", "poète", "est", "quelqu'un", "qui", "dit", "ou", "écrit", "un", "ou", "plusieurs", "poèmes.", "C'est", "donc", "une", "personne", "qui", "possède", "l'art", "de", "combiner", "les", "mots,", "les", "sonorités,", "les", "rythmes", "pour", "évoquer", "des", "images,", "suggérer", "des", "sensations,", "des", "émotions."]
# Nous allons maintenant iterer dessus avec les bloc et each 
#            |param| 
# NB Un block prend toujours un |param| en l'occurence ici on utilise |mot| qui nous permets dans la  varaible mots de lire chaque mot 
# Il prend en paramètre chaque élément du tableau, ces éléments sont des mots 
mots.each do |mot|  
    #  frequence[mot] += 1 nous permet alors de compter combien de mêmes mots sont dans la phrase. 
        frequence[mot] += 1
end

frequence.each do |mot, count|
    puts "Le mot \"#{mot}\" est affiché #{count} fois"
end

a = frequence.sort_by { |mot, count| count }  
a.reverse!
puts a.inspect






#puts frequence.inspect
