

# On va voir ici les opérateurs

puts "Veuillez choisir un chiffre: "
chiffre = gets.chomp.to_i


#                  OU || 
#  if chiffre == 4 || chiffre == 8

#                  ET &&
#  if chiffre == 4 && chiffre == 8

if (chiffre != 0 && chiffre == 4) || (chiffre != 0 && chiffre == 8)