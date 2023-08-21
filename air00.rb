#Split

#Créez un programme qui découpe une chaîne de caractères en tableau (séparateurs : espaces, tabulations, retours à la ligne).
#Votre programme devra utiliser une fonction prototypée comme ceci :
#ma_fonction(string_à_couper, string_séparateur) { // syntaxe selon votre langage
	# votre algorithme
#	return (tableau)
#}
#Exemples d’utilisation :
#$> python exo.py “Bonjour les gars”
#Bonjour
#les
#gars
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def cut(text_to_cut, string_cuter)
	new_array = []

	elelment_array = text_to_cut.split(string_cuter)
	new_array << elelment_array

	return new_array
end

#GESTION D'ERREUR
abort("error") if ARGV.size !=1
abort("error") if ARGV.empty?
abort("error") if ARGV.join !~ /[a-zA-Z]/ # concatene tous les mot de la chaine pour verifier si il n'y à que des lettres passées en arguments 

#PARSING
to_cut = ARGV[0]
cuter = /[,\s\n]+/

#RESOLUTION
result = cut(to_cut, cuter)

#AFFICHAGE

puts result
