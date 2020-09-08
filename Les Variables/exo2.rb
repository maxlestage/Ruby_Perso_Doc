=begin

Nous allons demander à l'utilisateur de rentrer un chiffre et puis nous allons lui dire si oui ou non son chiffre est paire 
pour cela nous pouvons nous appuyé du fichier index.rb

=end

puts "Veuillez choisir un chiffre: "

chiffre = gets.chomp.to_i

puts chiffre.even?


=begin

Comme nous venons de le voir lorsque que l'on fait un gets.chomp on recupère une chaine de caractère il faut donc ajouter la methode to_i 
pour que celle ci, soit convertit en un entier. 

enfin puts chiffre.even? 
permet de nous dire si le chiffre choisit par l'utilisateur est paire ou impaire et donc il nous retourne true si il est paire 
et false si il n'est pas paire 

=end