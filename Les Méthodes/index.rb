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

# Si l'on souhaite utilisé notre méthode, il nous suffit maintenant de l'appeler 

puts convert_to_min(778) 




def bonjour(name)
        return "Bonjour #{name}"
end

puts bonjour("Marc")