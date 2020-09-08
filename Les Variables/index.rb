# 3 Types Primaire 

#1  On aura les entiers, 88998909
#2  Les caractères 'Je me compose de caractères'
#3  Les Bouleens TRUE ou FALSE

# En Ruby on peut calculer les des entiers de cette façon, 


#   + Addition 

# -> 6 + 4
# = 10

#########################################

#   * Multiplication 

# -> 6 * 4
# = 24


#########################################

#   **  Puissance que l'on écrit ainsi '  **  '  plutot qu'avec le signe '  ^  '   

# -> 2 ** 4
# = 16


#########################################

#  Le typage avec Ruby  n'est pas valide avec les soustractions ou les additions

# -> '2' * 2
# = 22


#########################################

#  Le typage avec Ruby  n'est pas valide avec les soustractions ou les additions

# -> '2' * 2
# = 22


#########################################

#  Mais, nous pouvons additionner des chaines de caractères

# -> 'azeaze' + 'azeaze'
# = 'azeazeazeaze'


#########################################

#  On peut égalment utiliser des fonctions



# Ici reverse()
# -> "maxime".reverse()
# = "emixam"

# En Ruby les parenthéses nen sont pas obligatoire si laisser vide
# Ici upcase
# -> "maxime".upcase
# = "MAXIME"


#########################################

#  La methode to_i

# Cette methode nous permet de convertir une chaine de caratères en entiers
# -> "2".to_i
# = 2


#########################################

#  La methode even?

# Cette methode nous permet de tester si un chiffre est paire
# Explication du ? en Ruby,  le ? n'est pas un caractère spécial c'est une convention de Ruby, 
# Il va nous retourner un bouléen 
# Cette méthode ne fonctionne pas avec une "chaine de caractères"

# -> 2.even?
# = TRUE

# On peut cependant convertir la chaine de caractères en entier avec la methode to_i puis appliqué le even?

# -> "2".to_i.even?
# = 2

#########################################

#  La methode to_i

# Cette methode nous permet de convertir une chaine de caratères en entiers
# -> "2".to_i
# = 2


#########################################

# Notre Première Variable 
# Aussi simple que ça :

nom = "LESTAGE"

# Pour concaténer en Ruby " hbegbegcg #{ notre variable } fjvhrvv ", fonctionne uniquement avec " "
# pas les simple ' '
# En ruby les caractères speciaux  exemple : "ç" ne fonctionne pas. 

"Bonjour #{nom} comment ca va ?"