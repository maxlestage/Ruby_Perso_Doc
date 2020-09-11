#                                                      LES BOUCLES

#                                                       ' loop '





=begin 

mind = 15

user = 0


# Alors loop, tout ce qui se trouve a partir de ' do ' jusqu'à ' end ' ça s'appel un bloc ! 




loop do user != mind 
    puts " Entrez votre chiffre : "
        user = gets.chomp.to_i 
    if user > mind 
        puts "Le chiffre choisit est supérieur"
            
    elsif user < mind 
        puts "Le chiffre choisit est inférieur"
    else 
        puts "Vous avez deviné le bon chiffre!"
        break
    end
end

=end

# adeviner = 4
# a = nil 


# On résume l'expression ci dessous :
# On lui dit,  fait 3 fois :
=begin 
a == adeviner
    puts "Entrez votre chiffre: "
    a = gets.chomp.to_i
        if a > adeviner
            puts "La valeur est supérieur"
        elsif a < adeviner 
            puts "La valeur est inférieur"    
        end
=end 
# et stock dans |num| 


=begin

3.times do |num|

    next if a == adeviner
    puts "Entrez votre chiffre: "
    a = gets.chomp.to_i
        if a > adeviner
            puts "La valeur est supérieur"
        elsif a < adeviner 
            puts "La valeur est inférieur"    
        end
end

puts "Bravo tu as deviné" if a == adeviner

=end 

=begin

3.times do |num| 
    puts num
end

=end

# si on lance le terminal avec le code ci-dessus, le terminal nous rend : 
=begin 

0
1
2

=end 
# On s'aperçoit qu'il ne commence pas de 1 mais de 0 ! 
# les blocks peuvent prendre differente valeur | x |


eleves = [ "jean", "jacque", "marine"]

#eleves.each do |eleve|
#    puts "Bonjour #{eleve}"
#end

# Le terminal nous rend " Bonjour jean ", " Bonjour jacque "," Bonjour marine "


# Je prend tout les élèves (eleves) du tableau élèves et je fais une nouvelle variable
new_eleves = eleves.select do |eleve|
    # je veux uniquement l'élève qui à comme nom "le nom de l'élève que tu veux"    
    eleve == "le nom de l'élève que tu veux"
  end

new_eleves.each do |eleve|
  puts "bonjour #{eleve}"
end

