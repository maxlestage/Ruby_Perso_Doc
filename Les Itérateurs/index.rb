#                                                       LES ITERATEURS






# Cette section illustre une des fonctionnalités les plus intéressantes de Ruby: les itérateurs.

# Un itérateur est une méthode un peu particulière. Il s'agit d'une méthode vous permettant d'accéder un par un à des éléments.

# Les tableaux font partie des objets capables de supporter des itérateurs. 




#Voici un exemple tout simple, utilisant la méthode Array#each:


            ##########################################################
            #                                                        #
                amis = [ "Benjamin", "David", "Stéfanie", "Laura" ]  
                amis.each do |ami|                                   
                    puts "J'ai un ami qui s'appelle " + ami          
                end                                                     
            #                                                        #
            ##########################################################


# Ce qui produira à l'écran du terminal:





#   Le lecteur attentif aura peut-être remarqué que cette méthode d'itération ressemble fort à la toute première boucle illustrée dans ce tutoriel (celle avec la forme n.times do ... end). Il s'agit effectivement d'un itérateur! Cette méthode vous permet d'itérer sur la séquence d'entiers compris entre 0 et n-1. Regardez:

            ##########################################
            #                                        #
                        4.times do |nombre|         
                            puts nombre              
                        end                          
            #                                        #
            ##########################################

#Ce qui produira à l'écran:

# =>  0
# =>  1
# =>  2
# =>  3

#   Vous remarquerez que l'itérateur times commence à compter à 0. Un peu comme les indices des tableaux (0 représentant le premier élément). 
#   Donc, le code suivant:

            ##########################################################################
            #                                                                        #
                        amis = [ "Benjamin", "David", "Stéfanie", "Laura" ]         
                        amis.each do |ami|                                          
                            puts "J'ai un ami qui s'appelle " + ami                 
                        end                                                          
            #                                                                        #        
            ##########################################################################

#   Peut également être ré-écrit comme ceci:
# INFO     'i' est une notation standard pour représenter un indice.

            #######################################################################
            #                                                                     #
                        4.times do |i|                                           
                            puts "J'ai un ami qui s'appelle " + amis[i]          
                        end                                                      
            #                                                                     #
            #######################################################################            

#   Maintenant, voici quelque chose d'amusant. Vous souvenez-vous de la méthode Array#length? 
#   Nous pouvons améliorer notre code en l'utilisant:


            #######################################################################
            #                                                                     #
                        amis.length.times do |i|    # 'i' pour indice
                            puts "J'ai un ami qui s'appelle " + amis[i]
                        end
            #                                                                     #
            #######################################################################   



#   Essayons maintenant d'afficher uniquement les éléments du tableau dont l'indice est pair. 
#   Le moyen le plus facile de déterminer si un entier est pair est de vérifier si le reste de sa division avec 2 est bien égal à 0. 
#   Souvenez-vous, l'opérateur Integer#% donne le reste d'une division. Voici le code:

            #######################################################################
            #                                                                     #
                        amis.length.times do |i|    # 'i' pour indice
                            # Nous n'affichons que les indices pairs
                            if i % 2 == 0
                                puts "J'ai un ami qui s'appelle " + amis[i]
                            end
                        end
            #                                                                     #
            #######################################################################   



#   Ce qui produira:

# =>  J'ai un ami qui s'appelle Benjamin
# =>  J'ai un ami qui s'appelle Stéfanie

#   Comment faire pour afficher les amis dans l'ordre alphabétique? 
#   Rien de plus simple, il suffit d'utiliser la méthode Array#sort:


            #######################################################################
            #                                                                     #       
                        amis.sort.each do |ami|
                            puts "J'ai un ami qui s'appelle " + ami
                        end
            #                                                                     #
            #######################################################################   

#   Ce qui produira:

# =>  J'ai un ami qui s'appelle Benjamin
# =>  J'ai un ami qui s'appelle David 
# =>  J'ai un ami qui s'appelle Laura 
# =>  J'ai un ami qui s'appelle Stéfanie 