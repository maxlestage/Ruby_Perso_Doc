#############                                              Les blocks
#Lorsque l'on souhaitera itérer sur des objets plus complexes, comme les tableaux ou les hash, on pourra alors utiliser un des blocks
#Les blocks s'écrivent de la manière suivante
... do |parametre1, parametre2 ....|
    code
end
# ou syntaxe courte
.... { |parametre1, parametre2 ....| code }
#Les blocs sont utilisés dans de nombreuses méthodes de Ruby. Par exemple les entiers disposent d'une méthode times qui permet d'exécuter un bloc un certain nombre de fois :
3.times do |num|
    puts num
end

# 0 
# 1
# 2
#Ces blocs nous permettent aussi de parcourir les éléments d'un tableau avec par exemple la méthode each
eleves = ["Jean", "Jacque", "Marine"]
# syntaxe courte
eleves.each { |eleve| puts "Bonjour #{eleve}" }
# syntaxe longue
eleves.each do |eleve|
    puts "Bonjour #{eleve}" 
end
#Les blocs sont très utilisés en Ruby et on les retrouve dans de nombreuses méthodes, on reviendra dessus un petit peu plus tard pour mieux comprendre comment il fonctionne et ce qu'ils sont réellement.
