#Split en fonction

#Créez un programme qui découpe une chaîne de caractères en tableau en fonction du séparateur donné en 2e argument.
#Votre programme devra intégrer une fonction prototypée comme ceci :
#ma_fonction(string_à_couper, string_séparateur) { // syntaxe selon votre langage
	# votre algorithme
#	return (tableau)
#}
#Exemples d’utilisation :
#$> python exo.py “Crevette magique dans la mer des étoiles” “la”
#Crevette magique dans 
# mer des étoiles
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def cut(text_to_cut, string_cuter)
	new_array = []
	
	elelment_array = text_to_cut.split(string_cuter)
	new_array << elelment_array

return new_array
end

#GESTION D'ERREUR
abort("error") if ARGV.size !=2
abort("error") if ARGV.empty?
abort("error") if ARGV.join !~ /[a-zA-Z]/ # concatene tous les mot de la chaine pour verifier si il n'y à que des lettres passées en arguments 

#PARSING
to_cut = ARGV[0]
cuter = ARGV[1]

#RESOLUTION
result = cut(to_cut, cuter)

#AFFICHAGE

puts result
