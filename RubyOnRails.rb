########################################################   RUBY ON RAILS ################################################################




######  Pour créer un application Rails :

## Dans le terminal, saisir la commande rails new nom_de_mon_app

#$ rails new my_app 


######  La structure du dossier pour une toute nouvelle application Rails. 

## Fichier/    Dossier	Objet

# app/    Cœur du code de l'application (app), incluant des modèles (models),
# des vues (views), des contrôleurs (controllers), et des « assistants » (helpers)
# config/	Configuration de l'application

# db/     Fichiers pour manipuler la base de données

# doc/    Documentation pour l'application

# lib/	  Modules libraries

# log/	  Journaux (logs) de l'application

# public/	  Données publiques (p.e., accessibles aux navigateurs web), telles que les images et les feuilles de styles (CSS)

# script/   rails	Un script fourni par Rails pour générer du code, ouvrir les sessions console, ou démarrer une serveur web local

# test/	    Tests de l'application (rendu obsolète par le dossier spec/ introduit à la section 3.1.2)

# tmp/    Fichiers temporaires

# vendor/	  Codes Tierce-partie tels que les plugins et les gems

# README :  	Une brève description de l'application

# Rakefile :  	Tâches utiles accessibles par le biais de la commande rake

# Gemfile :   	Les Gems requis par l'application

# config.ru :   	Un fichier de configuration pour Rack middleware

# .gitignore :  	Les patterns pour les fichiers qui doivent être ignorés par Git







#######  Lancer un serveur local 

#$ rails server

# Le serveur ouvre alors une connection à l'adresse suivante  http://localhost:3000/



###### Le framework Rails utilise l'architecture Modèle-Vue-Contrôleur (MVC)


# Vous pouvez avoir noté que la structure standard d'une application Rails (Illustration 1.2) possède un dossier 
# appelé app/ contenant trois sous-dossiers : models (Modèles), views (Vues), and controllers (Contrôleurs). 





############################## POUR FIXER LA DATABASE POSTGRESQL 


              # Default: &default
              #   adapter: postgresql
              #   encoding: unicode
              #   # For details on connection pooling, see Rails configuration guide
              #   # https://guides.rubyonrails.org/configuring.html#database-pooling
              #   pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
              #   username: postgres
              #   password: -

              # development:
              #   <<: *default
              #   database: myapp_development
              #   host: ''
              #   port: 5432
              #   password: -

####### On finit par la commande :

# rake db:create 

# Celle ci va s'occuper de créer la database et de faire la connexion. 


######## Les Routes :


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

#           <p> Salut comment ça va ? </p>
# Ici une balise <p>


### Le code Ruby dans le html.erb: 

# On peut égalment écrire du code Ruby sous la syntaxe suivante :
#            <%     %>

# et si on souhaite afficher du code ruby, nous utiliserons cette syntaxe :

#            <%=    %>



######### Pour aller un peu plus loin avec les vues voici le fonctionnement : 


# Par défaut, toutes les vues que nous allons créer vont uttilisée par défaut dans le dossier 'layout', le fichier -> application.html.erb 

# Voici sa composition :


# application.html.erb  

          # <!DOCTYPE html>
          # <html>
          #   <head>
          #     <title>RailsSolo</title>
          #     <%= csrf_meta_tags %>
          #     <%= csp_meta_tag %>

          #     <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
          #     <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
          #   </head>

          #   <body>
          #     <%= yield %>
          #   </body>
          # </html>


# Ce qui va nous intéressé ici ce sera tout ce qui se trouve dans la balise '<body> <%= yield %> </body>'

# Qu'est-ce que ce <%= yield %> ? 

# Enfaite il dit, je veux que tu affiches, le contenu qui a été généerer à cet endroit là -> 
# Ducoup par exemple, notre 'salut.html.erb' s'affichera dans se <%= yield %>
# Et cela vaut pour toutes les autres pages que l'ont pourra créer. 




######### Un CSS particulier ? 

# Nous y voici, pour ajouter un CSS particulier il faudra le renseigner dans le fichier 'application.html.erb'
# afin que le css soit prit en compte sur toutes nos pages, puisque comme vu à l'instant; 
# c'est grace à cette balise  '<%= yield %>' que notre page s'affiche. et ce  <%= yield %> recupère le  CSS qu'il trouvera dans le fichier 'application.html.erb'




######### CSS / Mise en Pratique avec Bootstrap ! 


          # <!DOCTYPE html>
          # <html>
          #   <head>
          #     <title>RailsSolo</title>
          #     <%= csrf_meta_tags %>
          #     <%= csp_meta_tag %>

          #     <%= stylesheet_link_tag 'application', media: 'all', 'data-turbolinks-track': 'reload' %>
          #     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
          #     <%= javascript_pack_tag 'application', 'data-turbolinks-track': 'reload' %>
          #   </head>

          #   <body>
          #   <nav class="navbar navbar-expand-lg navbar-light bg-light">
          #   <a class="navbar-brand" href="#">Toujours Skateboarding Magazine</a>
          #   <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          #     <span class="navbar-toggler-icon"></span>
          #   </button>

          #   <div class="collapse navbar-collapse" id="navbarSupportedContent">
          #     <ul class="navbar-nav mr-auto">
          #       <li class="nav-item active">
          #         <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
          #       </li>
          #     </ul>
          #   </div>
          # </nav>

          # <div class="container" style="padding-top: 5rem;">
          #   <%= yield %>
          # </div>
          #   </body>
          # </html>


######### Revenons à notre fichier routes.rb 

# On peut passer un paramètre dans notre url 

Rails.application.routes.draw do
    root 'welcome#home'
    get '/salut/:name', to: 'welcome#salut'
    # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  end
  
# On définit ici notre parametre par ':'suivi du nom de notre paramètre en l'occurence ici on utilisera nom : get '/salut/:name'







