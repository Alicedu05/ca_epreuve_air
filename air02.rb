#Concat

#Créez un programme qui transforme un tableau de chaînes de caractères en une seule chaîne de caractères. Espacés d’un séparateur donné en dernier argument au programme.
#Utilisez une fonction de ce genre (selon votre langage) :
#ma_fonction(array_de_strings, separateur) {
	# votre algorithme
#	return (string)
#}
#Exemples d’utilisation :
#$> python exo.py “je” “teste” “des” “trucs” “ “
#Je teste des trucs
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def concat(to_join, glue)
	new_string = ""
	new_string << to_join.join(glue)
	
	return new_string
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 2
abort("error") if ARGV.empty?
#abort("error") if ARGV.join !~ /[a-zA-Z]/ # concatene tous les mot de la chaine pour verifier si il n'y à que des lettres passées en arguments 

#PARSING
 string_to_join =ARGV[0..-2]
 scotch = ARGV[-1]

#RESOLUTION
result = concat(string_to_join, scotch)

#AFFICHAGE
puts result.inspect