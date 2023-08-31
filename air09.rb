#Rotation vers la gauche

#Créez un programme qui décale tous les éléments d’un tableau vers la gauche. Le premier élément devient le dernier à chaque rotation.
#Utilisez une fonction de ce genre (selon votre langage) :
#ma_rotation(array) {
	# votre algorithme
#	return (new_array)
#}
#Exemples d’utilisation :
#$> python exo.py “Michel” “Albert” “Thérèse” “Benoit”
#Albert, Thérèse, Benoit, Michel
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def turn(array)
	array_copy = array.dup
	new_array = [] 
	i = 1

	while i < array_copy.size
		new_array << array_copy[i]
		i+=1
	end

	new_array << array_copy[0]
	return new_array 
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 2
abort("error") if ARGV.empty?


#PARSING
array = ARGV

#RESOLUTION
result = turn(array)
#result = ma_rotation(array)


#AFFICHAGE
puts result.join(", ")

#def ma_rotation(array) solution trouvé en premier mais qui me parait compliqué a lire
#	array_copy = array.dup
#	old_position = 0
#	new_position = -1

#	to_mouve = array_copy.delete_at(old_position)
#	array_copy.insert(new_position, to_mouve)
	
#	return array_copy
#end
