# On ouvre le terminale
# ruby leFichier.rb

# pour afficher du texte on peut faire un puts (" Ceci est mon texte")
# Mais comme vu précedement les parenthèses ne sont pas obligatoire en ruby car le langage a évoluer. 

# puts "Salut la télé !"


# Nous allons maintenant utiliser "gets"
# gets recupère l'information donnée par l'utilisateur 
# Ansi dans ce cas nous allons déclarer une variable nom = gets 

# Ducoup pour expliquer notre code, ici nous avons définit la varaible nom à gets, gets recupère une valeur donnée par 
# l'utilisateur, puis, puts qui nous affiche "Salut #{nom.chomp} !"
# donc "#{maVariable.chomp}" ici grace à "#{}" on souhaite récupérer la valeur taper par notre utilisateur, dans le cas présent un nom
# "#{la valeur definit par l'utilisateur}", puis pour eviter le saut de ligne liée à l'entrée de la valeur par l'utilisateur, on ajoute la methode "chomp" de la class "string"
# "#{la valeur definit par l'utilisateur.chomp}" du coup grace au chomp on a pour résultat dans notre terminal, 

# En Ruby on commente égalment un bloc de la façon suivante depuis un éditeur, on place donc un "=begin" et on termine par "=end" 

=begin 

nom = gets 

puts "Salut #{nom.chomp} !" 

=end


#       Résultat depuis le terminal ->

#                                                                maxlestage@MBP-de-Max  ~/Documents/GrafikArt Ruby  ruby exo1.rb
#= (valeur taper par un utilisateur, il a choisit =>)            max
#                                                                Salut max !

puts " Entrez votre nom : "

nom = gets.chomp 

puts "Salut #{nom} !"





