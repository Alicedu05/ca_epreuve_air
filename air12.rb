
#Le roi des tris

#Créez un programme qui trie une liste de nombres. Votre programme devra implémenter l’algorithme du tri rapide (QuickSort).
#Vous utiliserez une fonction de cette forme (selon votre langage) :
#my_quick_sort(array) {
	# votre algorithme
#	return (new_array)
#}
#Exemples d’utilisation 
#$> python exo.py 6 5 4 3 2 1
#1 2 3 4 5 6
#Afficher error et quitter le programme en cas de problèmes d’arguments.
#Wikipedia vous présentera une belle description de cet algorithme de tri.

#FONCTION
def my_quick_sort(array)
	return array if array.size <= 1
	pivot = array.sample # séléction aléatoire
	left = []
	middle = []
	right = []
  
	array.each do |num|
	  if num < pivot
		left << num
	  elsif num == pivot
		middle << num
	  else
		right << num
	  end
	end
  
	return my_quick_sort(left) + middle + my_quick_sort(right)
  end

#GESTION D'ERREUR
abort("error") if ARGV.size < 2
abort("error") if ARGV.empty?
abort("error") if ARGV.any? { |arg| arg =~ /[a-zA-Z]/ }
abort("error") if File.extname(ARGV[0]) == ".txt"

#PARSING
array = ARGV.map(&:to_i)
first = ARGV[0].to_i
last = ARGV[-1].to_i
pivot = ARGV.size / 2


#RESOLUTION
result = my_quick_sort(array)

#AFFICHAGE
print result.join(" ")