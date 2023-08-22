# Un seul à la fois

#Créez un programme qui affiche une chaîne de caractères en évitant les caractères identiques adjacents.
#Exemples d’utilisation :
#$> python exo.py “Hello milady,   bien ou quoi ??”
#Helo milady, bien ou quoi ?
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def compare(to_compare)
    to_compare_copie = to_compare.dup
    char_list = []

    to_compare_copie.each_char do |char|
        char_list << "[#{char}]"
    end
   
    i = 1
    while i < char_list.size
        if char_list[i] == char_list[i-1]
            char_list.delete_at(i)
        end  
        i += 1
    end
    
    return char_list.join('')
end

#GESTION D'ERREUR
abort("error") if ARGV.size > 1
abort("error") if ARGV.empty?

#PARSING
string = ARGV[0]

#RESOLUTION
output = compare(string)
result = output.gsub(/\[|\]/, '') # regex pour retire les crochet et conserver la ponctuation

#AFFICHAGE
puts result