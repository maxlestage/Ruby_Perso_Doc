
#                                               LES TABLEAUX



# On imagine une classe avec des élèves et on doit stocker des informations, 
# pour se faire on va devoir utiliser un tableau 

# Pour créer un tableau il suffit d'ouvrir les crochets et ajoutez des valeurs (tous les types de valeurs que nous avions vue)
# Il peut contenir des entiers, " des chaines de caractères" et des booléens 

# Maintenant pour récuper un élève même chose que pour php le tableau commence à l'index 0 
# si nous avons 3 données cela nous donnera 0 1 2 index 


#            0        1         2 
classe = ['John', 'Matéo', 'Florian']


# On peut faire un tableau d'un tableau [[],[]]

ecole = [['John', 'Matéo', 'Florian'], ['Marcel', 'Pauline', 'Marie']]

# on va donc saisir les index de cette facon 
# pour notre premier t'ableau nous sommes a l'index 0 
# et dans notre premier tableau nous souhaitons avoir Mathéo qui est à l'index 1 
# on l'ecrira comme suit: 

ecole[0][1]

#########################################################################################################################################

#                                               LES HASH


# Pour créer un hash 

# Nous allons réaliser un hash 


marc = {'note' => 4, 'age' => 12}

# Maintenant que notre hash est fait on souhaite recupérer une valeur ici on veut sa note: 


marc ['note']

# le tableau nous renvoie 4, car cela correspond à sa note 

# Si on créer un élève supplémentiare qui vient d'arriver en cours d'années et qui n'a pas eu de note 

francine = {'age' => 11}  

# on va faire un 

francine ['note']

# Mais il va nous retourner 'nil' car francine n'a pas de note  c'est un équivalent de 'null'

# On va voir par la suite que l'on peut modifier le hash 
# On vient d'ajouter la note 4 à francine 
francine ['note'] = 4

# si l'on refait: 
francine ['note']

# francine a bien eu un 4 



# On peut afficher l'esemble du hash de francine en tapant juste 

francine 

# Et le terminal nous rendra 

=> {'age' => 11, 'note' => 4}  

# Nous pouvons avec une methode 'values' retourné dans un tableau les valeurs de francine 

francine.values

# Ce qui nous retournera :

[11, 4]
# qui correspond à son age et à sa dernière note. 

#########################################################################################################################################

#                                                  LES SYMBOLES


# Les symboles en Ruby c'est une sorte de micro-constante
# Pour ecrire un symbole en Ruby :


# Cela se commence par ':' suivi d'une clé

# Exemple 

:red 

# Si l'on valide dans le terminal il nous retourne :red aussi 

# On peut faire un :red.class , .class nous donne une information sur la class ici le terminal nous retourne -> Symbol

# remarque .class fonctionne avec tout ex 1.class -> fixnum , 'szszzd'.class -> String ,  :red.class -> Symbol

# Les Symbols ont un gros avantage si on les utilises avec les hash vue précedemnt 

# Exemple :

fernand = {:note => 15}

# Si l'on tape fernand[:note] le terminal nous affiche 15

# Egalement depuis la mise a jour de ruby 
# c'est plus simple a écrire grace a une nouvelle syntaxe des hash : 


# Exemple :


marc = {note: 14, age: 16, taille: 185, couleur: 'Rouge'}
# Le terminal nous rend   ' => {:note=>14, :age=>16, :taille=>185, :couleur=>"Rouge"} '
# Ainsi si l'on veut récuperer un éléments nous pouvons faire 

marc[:note]
# et le terminale va nous rendre ' => 14 '

# On peut également faire un hash de hash exemple :

ecole = {cantau: {eleve: ['Marc', 'Joaquim', 'Mina', 'Laurent']}}

# Pour recupérer un élève on fera ainsi :

ecole[:cantau][:eleve][0]

# et le terminal nous rendra ' => "Marc" ' 






















