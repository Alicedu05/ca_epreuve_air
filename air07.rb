#Insertion dans un tableau trié

#Créez un programme qui ajoute à une liste d’entiers triée un nouvel entier tout en gardant la liste triée dans l’ordre croissant. Le dernier argument est l’élément à ajouter.
#Utilisez une fonction de ce genre (selon votre langage) :
#sorted_insert(array, new_element) {
	# your algo
#	return (new_array)
#}
#Exemples d’utilisation :
#$> ruby exo.rb 1 3 4 2
#1 2 3 4
#$> ruby exo.rb 10 20 30 40 50 60 70 90 33
#10 20 30 33 40 50 60 70 90
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def insert(int_list,num)
	copy_int_list = int_list.dup
    size = copy_int_list.size
	new_array = []
    i = 0

    if num <= copy_int_list[0] 
        new_array << num 
    end

    while i < copy_int_list.size
        if copy_int_list[i] < num && num < copy_int_list[i+1]
            new_array << copy_int_list[i]
            new_array << num

        elsif num >= copy_int_list[-1]
                new_array << copy_int_list
                new_array << num
                break
        else
            new_array << copy_int_list[i]
        end
            i += 1
    end
	return new_array
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 3
abort("error") if ARGV.empty?
abort("error") if ARGV.join =~ /[a-zA-Z]/ # concatene tous 

#PARSING
number_list = ARGV[0..-2].map(&:to_i) 
to_class = ARGV[-1].to_i 

#RESOLUTION
complete_list =  insert(number_list,to_class)

#AFFICHAGE
print complete_list.join(" ")


#nombre_a_ajouter = 33
#index_insertion = liste.index { |nombre| nombre > nombre_a_ajouter } || liste.size
#liste.insert(index_insertion, nombre_a_ajouter)
#puts liste

#def insert(int_list,num)
#	copy_int_list = int_list.dup
#	copy_int_list << num
	
#	for i in (copy_int_list.size - 1).downto(0) # bubble_sort
 #       tableau_trie = true 

  #      for j in 0..i-1 do 
   #         if copy_int_list[j+1] < copy_int_list[j]
    #            temp = copy_int_list[j]
     #           copy_int_list[j] = copy_int_list[j+1]
      #          copy_int_list[j+1] = temp

       #        tableau_trie = false
        #end
        #end
        #break if tableau_trie
    #end

	#return copy_int_list
#end