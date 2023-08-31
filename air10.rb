#Afficher le contenu

#Créez un programme qui affiche le contenu d’un fichier donné en argument.
#Exemples d’utilisation :
#$> cat a.txt
#Je danse le mia
#$> ruby exo.rb “a.txt”
#Je danse le mia
#Afficher error et quitter le programme en cas de problèmes d’arguments ou de fichier inaccessible.

#FONCTION
def reader(file)
    File.read(file)
end

#GESTION D'ERREUR
abort("error") if ARGV.size < 1
abort("error") if ARGV.empty?
abort("error") if File.extname(ARGV[0]) != ".txt"
abort("error") unless File.exist?(ARGV[0])

#PARSING
argument = ARGV[0]

#RESOLUTION
read_txt = reader(argument)

#AFFICHAGE
puts read_txt
