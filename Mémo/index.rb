

=begin


En Ruby on constate dans la doc que dans certaines méthodes, les caractères spéciux qui reviennent, 

les points d'intérrogation ? et les points d'exclamtion !

En Ruby on peut écrire une fonction qui contient des points d'intérrogation ou des points d'exclamation, 
ce n'est pas un caractère qui a une particularité, c'est uniquement le nom de la fonction qui contient un ? 

Explication lorsque l'on met un ? à la fin d'une méthode, cela veut dire en règle générale que celle - ci va nous retourner un bouléen 
ce sera TRUE ou FALSE 

dans le cas de even?  on pourrait le traduire par "est-ce que s'est paire ?"


Mais le point d'exclamation peut faire changer l'élément


Voir exemple du terminal: 


irb(main):001:0> a = "Salut"
=> "Salut"

irb(main):002:0> a
=> "Salut"

irb(main):003:0> a.upcase
=> "SALUT"

irb(main):004:0> a
=> "Salut"

irb(main):005:0> a.upcase!
=> "SALUT"

# On remarque donc ici que la valeur de notre variable a à changer du au ! a la suite de 
# la méthode upcase qui sert entre autre à passer une chaîne de caractère en MAJUSCULE.

irb(main):006:0> a
=> "SALUT"

irb(main):007:0> 


 