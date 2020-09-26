

=begin  


                Dans l'exemple qui suit nous allons voir le cas d'une liste ou l'on ne prévoit pas avant.
                On a donc la possibilité de dire a ruby j'attend un nombre de paramètre mais je ne connais pas l'avance le nombre exact de ces entrées. 
                Dans ce cas plutôt que d'écrire notre fonction ainsi: 

                def list(nom, nom2, nom3)
                        return
                end

                list('Marc', 'Sarah', 'Michel', 'Joaquim', 'Jonah', 'Maud')

                Nous allons l'écrire de cette façon:

                def list(*noms)
                        return
                end
                list('Marc', 'Sarah', 'Michel', 'Joaquim', 'Jonah', 'Maud')
                Alors quest-ce que veut dire (*param)?
                cela veut dire que automatiquement, tous les paramètres que nous allons envoyer dans la fonction seront sauvegarder dans un tableau [noms]


                def list(*noms)
                        # Nous permet ici d'inspecter les éléments du tableau noms 
                        puts noms.inspect
                        return
                end

                list('Marc', 'Sarah', 'Michel', 'Joaquim', 'Jonah', 'Maud')

                et la réponse du terminal sera :
                irb => ["Marc", "Sarah", "Michel", "Joaquim", "Jonah", "Maud"]


                Maintenant nous allons faire en sorte de boucler sur chaque noms

                def list(*noms)
                        # Je prends les noms.each do et parmetre un bloc 
                        # qui se traduit littéralement par:  pour chaque |nom| 

                        noms.each do |nom|
                                        #  ce qui nous rendra le nom de la personne grace à #{nom} 

                                puts "- #{nom}"

                        end
                        puts noms.inspect
                        return
                end

                list('Marc', 'Sarah', 'Michel', 'Joaquim', 'Jonah', 'Maud')


=end

def list(*noms)
    # Je prends les noms.each do et parmetre un bloc 
    # qui se traduit littéralement par:  pour chaque |nom| 

    noms.each do |nom|
#  ce qui nous rendra le nom de la personne grace à #{nom} 
            puts "- #{nom}"
    end
end

list('Marc', 'Sarah', 'Michel', 'Joaquim', 'Jonah', 'Maud')



# Et cela nous donnera pour résultat 
# irb => 
# - Marc
# - Sarah
# - Michel
# - Joaquim
# - Jonah
# - Maud




# ****************************************************************************************************************************************


# Ce paramétre là, (*noms) On appel ça un splat
# Son rôle est de convertir automatiquement un liste d'arguments dans un tableau. 

def list(prefixe, *noms)
    # Je prends les noms.each do et parmetre un bloc 
    # qui se traduit littéralement par:  pour chaque |nom| 

    noms.each do |nom|
            #  ce qui nous rendra le nom de la personne grace à #{nom} 
            puts "- #{prefixe} #{nom}"
    end
end

list("Bonjour",'Marc', 'Sarah', 'Michel', 'Joaquim', 'Jonah', 'Maud')



# Et cela nous donnera pour résultat 
# irb => 
# - Marc
# - Sarah
# - Michel
# - Joaquim
# - Jonah
# - Maud