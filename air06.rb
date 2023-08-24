#Contrôle de pass sanitaire

#Créez un programme qui supprime d’un tableau tous les éléments qui ne contiennent pas une autre chaîne de caractères.
#Utilisez une fonction de ce genre (selon votre langage) :
#ma_fonction(array_de_strings, string) {
	# votre algorithme
#	return (nouvel_array_de_strings)
#}
#Exemples d’utilisation :
#$> python exo.py “Michel” “Albert” “Thérèse” “Benoit” “t”
#Michel
#$> python exo.py “Michel” “Albert” “Thérèse” “Benoit” “a”
#Michel, Thérèse, Benoit
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def compare(string_list, model)
	copie_string_list = string_list.dup
	new_array = []

	copie_string_list.each do |word|
		identical = false

		word.each_char do |char|
			i = 0
			while i < word.size
				if char == model
					identical = true
					break
				end
				i += 1
			end
		end
		if identical == false
			new_array << word
		end
	end
	return new_array
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 2
abort("error") if ARGV.empty?

#PARSING
list = ARGV[0..-2] 
model_string = ARGV[-1]

#RESOLUTION
result = compare(list, model_string)

#AFFICHAGE
print result.join(" ")
