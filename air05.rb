#Sur chacun d’entre eux

#Créez un programme qui est capable de reconnaître et de faire une opération (addition ou soustraction) sur chaque entier d’une liste.
#Exemples d’utilisation :
#$> ruby exo.rb 1 2 3 4 5 “+2”
#3 4 5 6 7
#$> ruby exo.rb 10 11 12 20 “-5”
#5 6 7 15
#L’opération à appliquer sera toujours le dernier élément.
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def calculat(liste_of_integer, operateur)
    symbol = operateur[0] 
    chiffre = operateur[1].to_i 
    liste_solution = []

    liste_of_integer.each do |number|

        if symbol == "-" # Si l'opérateur est "-"
            solution = number - chiffre
        else
            solution = number + chiffre
        end

        liste_solution << solution
    end

return liste_solution
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 2
abort("error") if ARGV.empty?
if ARGV.any? { |arg| arg =~ /[a-zA-Z]/ }
  abort("error")
end

#PARSING
list_of_integer = ARGV[0..-2].map(&:to_i)  
operateur = ARGV[-1] # "+2"

#RESOLUTION
result = calculat(list_of_integer, operateur)

#AFFICHAGE
print result.join(" ")