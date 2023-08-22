#Chercher l’intrus

#Créez un programme qui retourne la valeur d’une liste qui n’a pas de paire.
#Exemples d’utilisation :
#$> python exo.py 1 2 3 4 5 4 3 2 1
#5
#$> python exo.py bonjour monsieur bonjour
#monsieur
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def to_compare(list_elements)
    odd = ""
   
    list_elements.each do |element|
        cpt = 0

        list_elements.each do |other_element|

            if element.match?(other_element) 
                cpt += 1
            end 
        end

        if cpt == 1
            odd << element
        end

    end
    return odd

end

#GESTION D'ERREUR
abort("error") if ARGV.size < 2
abort("error") if ARGV.empty?

#PARSING
list = ARGV

#RESOLUTION
result = to_compare(list)

#AFFICHAGE
puts result