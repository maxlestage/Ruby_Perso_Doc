#                                               LES BOUCLES





# On commence par la boucle WHILE ≠ tant que


# La boucle while s'écrit ainsi: while suivi de sa <condittion>
# Pour comprendre, on peut traduire l'ensemble par tant que (while) cette <condition>

while <condittion> 

    # NOTRE CODE ..............



    # tant que le condition sera remplit le code sera executé 


    # puis à la fin de notre boucle on met end comme suit :
end



##############################################  La boucle for ###################################################


# Exemple : 
# 1..10 Les deux points nous pemettent de parcourirs de 1 à 10 sans exclusion
for num in 1..10
    puts num
end
# RESULTAT:
# Avec cette boucle for on affiche toutes les valeurs allant de 1 à 10 dans le terminal 


# Ici on r'ajoute un point, on se retrouve donc avec 1...10 ce qui nous permets égalment comme vu précédement de parcourirs jusqu'à 10 mais 10 sera exclu 

for num in 1...10
    puts num
end

# Avec cette boucle for on affiche toutes les valeurs allant de 1 à 9 dans le terminal, on s'apperçoit que 10 sera échappé 

# On peut égalment sauter des étapes, exemple : 


for num in 1...10
    # if (si) le numéro est égale à 3, je fais next. 
    # next permet de dire "Peut importe ce qui arrive, je saute"
    next if num == 3    
        puts num
end

# Ainsi dans notre affiche du terminal le 3 sera échappé, '1 2 4 5 6 7 8 9' , pas 10 car nous avons les ' ... '
