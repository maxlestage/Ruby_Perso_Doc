#       ******************************          Exercice Personnel avec le terminal                    ******************************




=begin 



Pour ce TP, je souhaite pouvoir créer des utilisateurs depuis mon terminal avec la méthode Gets Chomp
Une fois un utilisateur créé il doit être sauvegarder un tableau.
Si le tableau reçoit un utilisateur, il doit nous demander de remplir différents champs
On veut son nom, le prénom lui sera automatiquement saisi lors de la création d'un utilisateur, il faut son âge, et sa couleur favorite.
La couleur favorite sera vérifiée depuis un tableau qui contient des vraies couleurs. nb pensé à passer les valeurs en minuscule du tableau ainsi que la réponse suivie d'un chomp
Suivant l'âge de l'utilisateur, on pourra retourner s'il est majeur ou pas. 

    


=end 


puts "Bonjour, nous venons de voir que tu essaies de te connecter sans avoir de compte utilisateur. \nAinsi nous aimerions connaitre ton nom ?"
name = gets.chomp
puts "Hello #{name}! \nNous avons besoin de plus d'information sur toi. \nPeux-tu nous en dire un peu plus #{name}?"



