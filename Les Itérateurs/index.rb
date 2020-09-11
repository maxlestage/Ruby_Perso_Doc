#                                                       LES ITERATEURS












# Cette section illustre une des fonctionnalités les plus intéressantes de Ruby: les itérateurs.

# Un itérateur est une méthode un peu particulière. Il s'agit d'une méthode vous permettant d'accéder un par un à des éléments.

# Les tableaux font partie des objets capables de supporter des itérateurs. 




#Voici un exemple tout simple, utilisant la méthode Array#each:


##########################################################
#                                                        #
#   amis = [ "Benjamin", "David", "Stéfanie", "Laura" ]  #
#   amis.each do |ami|                                   #
#       puts "J'ai un ami qui s'appelle " + ami          #
#   end                                                  #   
#                                                        #
##########################################################


# Ce qui produira à l'écran du terminal:

##########################################
#                                        #
#   J'ai un ami qui s'appelle Benjamin   #
#   J'ai un ami qui s'appelle David      #
#   J'ai un ami qui s'appelle Stéfanie   #
#   J'ai un ami qui s'appelle Laura      #
#                                        #
##########################################