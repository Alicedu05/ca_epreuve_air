#Afficher une pyramide

#Afficher un escalier constitué d’un caractère et d’un nombre d’étages donné en paramètre.
#Exemples d’utilisation :
#$> ruby exo.rb O 5
#    O
#   OOO
#  OOOOO
# OOOOOOO
#OOOOOOOOO
#Afficher error et quitter le programme en cas de problèmes d’arguments.

#FONCTION
def builder(charter, floor)
    pyramid = []
    empty_number = floor -1
    charter_number = 1
    j = 0

    floor.times do 
        row = []
        if j == 0
            empty_number.times do 
                row << " "
            end 
            row << charter
        else
            empty_number.times do 
                row << " "
            end
            charter_number.times do
                row << charter
            end
        end    
       
        j+=1
        charter_number += 2
        empty_number -= 1
        pyramid << row << "\n"
    end
    return pyramid
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 2
abort("error") if ARGV.empty?
abort("error") if ARGV =~ /[a-zA-Z\s]/
abort("error") if File.extname(ARGV[0]) == ".txt"

#PARSING
charter = ARGV[0]
floor = ARGV[1].to_i

#RESOLUTION
pyramid = builder(charter, floor)

#AFFICHAGE
puts pyramid.join("")