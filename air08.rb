#Mélanger deux tableaux triés

#Créez un programme qui fusionne deux listes d’entiers triées en les gardant triées, les deux listes seront séparées par un “fusion”.
#Utilisez une fonction de ce genre (selon votre langage) :
#sorted_fusion(array1, array2) {
	# your algo
#	return (new_array)
#}
#Exemples d’utilisation :
#$> ruby exo.rb 10 20 30 fusion 15 25 35
#10 15 20 25 30 35
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION

def cut(text_to_cut, string_cuter)
	first_array = []
	second_array= []
	index_cuter = text_to_cut.find_index(string_cuter)

	for i in 0..index_cuter-1
		text_to_cut[i]
		first_array << text_to_cut[i]
	end

	for j in index_cuter+1...text_to_cut.size
		text_to_cut[j]
		second_array << text_to_cut[j]
	end
	
return liste = [first_array, second_array]
end

def insert(num_liste1,num_liste2)
	list1_copy = num_liste1.dup
	list2_copy = num_liste2.dup
    max_size = [list1_copy.size, list2_copy.size].max
	new_array = []
    
	max_size.times do |index|
		if list1_copy[index] == nil || list2_copy[index] == nil
			remaining_elements = []
			remaining_elements.concat(list1_copy[index..-1]) if list2_copy[index].nil?
			remaining_elements.concat(list2_copy[index..-1]) if list1_copy[index].nil?
			
			new_array.concat(remaining_elements)
			break

		end

		if list1_copy[index] < list2_copy[index]
			new_array << list1_copy[index] << list2_copy[index]
		else
			new_array << list2_copy[index] << list1_copy[index]
		end

	end
	return new_array
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 3
abort("error") if ARGV.empty?
abort("error") if !ARGV.include?("fusion")

#abort("error") if ARGV.join =~ /[a-zA-Z]/ # concatene tous 

#PARSING
to_cut = ARGV[0..-1]#.map(&:to_s).join(' ') # transformer array en string separé d'un espace
cuter = "fusion"

#RESOLUTION
number_array = cut(to_cut, cuter)
result = insert(number_array[0],number_array[1])

#AFFICHAGE
print result