#                                                   Mise en pratique et cas Concret 




#    Le but ici sera de prendre en paramètre une liste d'arguments et puis de l'organisé:
#    Il faudra utiliser la méthode 'sort' sur les tableaux  


def reoganiser_liste(croissant, *noms)
    nouveau_nom = []
    noms.each do |nom|
        nouveau_nom << nom.to_s
    end
    nouveau_nom.sort!
    if !croissant
        nouveau_nom.reverse!
    end
        return nouveau_nom
end


#   1er cas on organise de a -> z
puts reoganiser_liste(true, 'Marc', 'Joseph', 'Benjamin', :Manue, 'George', :Marie, 'Lucien').inspect
#   2nd cas de Z -> A
puts reoganiser_liste(false, 'Marc', 'Joseph', 'Benjamin', :Manue, 'George', :Marie, 'Lucien').inspect