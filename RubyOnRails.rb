########################################################   RUBY ON RAILS ################################################################





#      Créer une nouvelle page => création d'une route
#      Il faut se rendre dans le dossier config du projet rails en cours, et ouvrir le fichier routes.rb. 



# routes.rb 

Rails.application.routes.draw do
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  

# Pour définir une route nous allons utiliser ici la méthode "get"

Rails.application.routes.draw do
    get '/salut', 
end
  
######## Le Controller 

# Un controller est une class qui contient différentes méthodes que l'on appel des actions  
# Le "controller" se trouve dans le dossier "app" => "controllers"  => application.controller.rb

# application_controller.rb

class ApplicationController < ActionController::Base 
end

######### Nous allons donc créer un controller que l'on nomme pages_controller.rb 

# La création d'un controller se fait toujours de cette façon -> on choissit un nom au pluriels suivi d'un underscore, de la mention controller et son extension .rb



# Dans notre controller on commence par créer sa class donc : 

# "app" => "controllers"  => pages_controller.rb 
class PagesController < ActionController::Base 
end


# Puis à l'inérieur on définit différentes méthodes que l'on appel action. 

# "app" => "controllers"  => pages_controller.rb 
class PagesController < ActionController::Base 

    def salut
    end

end

######### Revenons à notre fichier routes.rb 

# routes.rb 


Rails.application.routes.draw do
    get '/salut', to: 'pages'
end

# Ici donc à la suite de notre get '/salut' on passe en deuxième paramètre un 'hash' avec un clé 'to:' 
# et on lui indique le controlleur à appelé. Il y a une nommenclature particulière, ici on met le debut du nom de notre controlleur. 
# Dans le cas présent 'pages' pour rappel, qui est issue de 'pages'_controller.rb 


# routes.rb 


Rails.application.routes.draw do
    get '/salut', to: 'pages#salut'
end


# Et on lui passe en paramètre l'action# que l'on souhaite appeler, ici donc c'était 'salut'
# Donc on peut traduire ça par, 'pages'_controller.rb#salut 



# Pour rappel, 'salut' on l'a définit ici :


# "app" => "controllers"  => pages_controller.rb 
class PagesController < ActionController::Base 

    def salut
    end

end




# routes.rb 


Rails.application.routes.draw do

### Explication : 

#lorsque 'salut' est appelé, je veux que tu ailles dans le controller pages_controller.rb et que tu appels# la méthode 'salut'
    get '/salut', to: 'pages#salut'
end





######### Il faut maintenant que l'on s'occupe de la 'vue' 

# Ruby On Rails fonctionne par convention, chaque action a donc sa 'vue' 

# On retrouve les 'vue' dans "app" => "views" 

# Pour que l'affichage fonctionnne il faut alors créer un dossier dans 'views' du même nom que notre controller à savoir 'pages' pour pages_controller.rb

# Dans ce dossier 'pages' nous allons donc créer un fichier : 

# 'salut.html.erb'

### Explication : 

# 'salut' qui correspond au nom de notre action, '.html' pour lui dire que on veut rendre de l'html, suivi de 'erb' car Ruby On Rails utilise le moteur de template erb 
# on peut faire un paralléle sur symfony avec php qui utilise lui le moteur de templates 'twig' 


######### Comment ecrire dans notre fichier html.erb ?

# Eh bien comme en html classique: 

<p> Salut comment ça va ? </p>
# Ici une balise <p>

# On peut égalment écrire du code Ruby sous la syntaxe suivante :
<%     %>

# et si on souhaite afficher du code ruby, nous utiliserons cette syntaxe :

<%=    %>



