#                                               LES METHODES

=begin
    
        Les Méthodes vont nous permettre de ne pas repeter notre code manuellement, et l'automatisé. 
        Pour fonctionner, cette méthode on va d'abord lui envoyer un paramètre 

        Jusqu'a maintenant nous avons également utilisé des methodes notmamment le puts pour afficher et le gets qui nous permettait depuis 
        le terminal de saisir des valeurs. 
        Et puis on a aussi vu des methodes tel que 'to_i' qui nous on permit de convertir une chaine de carractère en entier (integer). 

        Pour Illustrer notre apprentissage des Methodes nous allons réaliser un programme capable de convertir des secondes en minutes. 

         
=end


# Pour définir une méthode on utilise le mot clé def

#       ici nous avons créé une methode convert_to_min et (cette méthode elle prend en parametre le mot seconds)
def convert_to_min(seconds)

#  A l'intérieur de notre méthode nous allons faire notre logique. 
                # ici dessous donc on fait seconds divisé par 60 car 1min represente 60sec 
        # Mais afin que notre commande soit renvoyé nous utiliserons le mot clé ' return'
        return seconds / 60
        # Et on conclut avec un end comme suit :
end 

# Si l'on souhaite utilisé notre méthode, il nous suffit maintenant de l'appeler, ci dessous avec l'aide du puts :
puts convert_to_min(778) 

#################################################################################################################################



#  Ici nous allons créer un petit script qui nous permet de reéuperer le nom de l'utilisateur via le terminal avec la commande 'gets':

#       Alors comme vu plus haut pour débuter une méthode on commence par le mot clé 'def' suivi de notre méthode(notre_parametre) 
#       Ici nous avons 'bonjour(name)'
def bonjour(name)
        # La ligne ci-dessous nous renvoie notre phrase "Bonjour suivi de ce que l'utilisateur entre via la méthode gets que nous allons voir au-dessous"
        return "Bonjour #{name}"
   # On pense égalment à mettre le end à la fin. 
end


#       la variable name égal la méthode gets.chomp 
#                       explication, ces deux methodes, la première gets nous permet de saisir une valeur depuis le terminal et la seconde chomp nous évite le saut de ligne
#                       à la fin de la saisi du gets ainsi on résume name par l'utilisateur saisi sa valeur puis il valide et la touche enter n'aura pas d'effet sur la saisie. 

name = gets.chomp 

# Ici plus de mystère, affiche donc la méthode bonjour(name)
# ici litéralement, bonjour la valeur saisie par l'utilisateur. 
puts bonjour(name)



