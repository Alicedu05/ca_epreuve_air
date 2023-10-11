#Meta exercice

#Créez un programme qui vérifie si les exercices de votre épreuve de l’air sont présents dans le répertoire et qu’ils fonctionnent (sauf celui là). 
#Créez au moins un test pour chaque exercice
#Exemples d’utilisation :
#$> python exo.py
#air00 (1/3) : success
#air00 (2/3) : success
#air00 (3/3) : success
#air01 (1/2) : success
#air01 (2/2) : failure
#air02 (1/1) : success
#... 
#Total success: (56/62)
#Bonus : trouvez le moyen d’utiliser du vert et du rouge pour rendre réussites et échecs plus visibles.

#FONCTION
def does_exist(value)
  test_number = 0
  test_size = 3
  result_exist = ""

  if File.exist?("air#{value}.rb")
    test_number += 1 
    $compteur_succes += 1 
    result_exist << "\e[32mair#{value} (#{test_number}/#{test_size}) : success\e[0m\n"
  else 
    test_number += 1
    result_exist << "\e[31mair#{value} (#{test_number}/#{test_size}) : failure\e[0m\n"
    $test_failure << result_exist
  end
  return result_exist

end

def compare(script, exits, value)
  test_number = 1
  test_size = 3
  result_compare = ""
  
  if script == exits
    test_number += 1
    $compteur_succes += 1
    result_compare << "\e[32mair#{value} (#{test_number}/#{test_size}) : success\e[0m\n" 
    
  elsif script.is_a?(SystemExit)
    test_number += 1
    $compteur_succes += 1
    result_compare << "\e[32mair#{value} (#{test_number}/#{test_size}) : success\e[0m\n"

  else
    test_number += 1
    result_compare << "\e[31mair#{value} (#{test_number}/#{test_size}) : failure\e[0m\n"
    $test_failure << result_compare
  end
  return result_compare

end

def fun(script, exits, value)
  test_number = 2
  test_size = 3
  result_compare = ""

  if script == exits
    test_number += 1
    $compteur_succes += 1
    result_compare << "\e[32mair#{value} (#{test_number}/#{test_size}) : success\e[0m\n"

  elsif script.is_a?(SystemExit)
    test_number += 1
    $compteur_succes += 1
    result_compare << "\e[32mair#{value} (#{test_number}/#{test_size}) : success\e[0m\n"
  else
    test_number += 1
    result_compare << "\e[31mair#{value} (#{test_number}/#{test_size}) : failure\e[0m\n"
    $test_failure << result_compare
  end
  return result_compare
  
end

#PARSING 
unit_test = []
test_size = unit_test.size
$compteur_succes = 0
$test_failure = []

argument_air00 = "\"Salut les gars\""
argument_air01 = "\"Crevette magique dans la mer des étoiles\" \"la\""
argument_air02 = "\"je\" \"test\" \"des\" \"truc\" \" \""
argument_air03 = "\"bonjour\" \"monsieur\" \"bonjour\""
argument_air04 = "\"Hello millady,  bien ou quoi ??\""
argument_air05 = "\"1\" \"2\" \"3\" \"4\" \"5\" \"+2\""
argument_air06 = "\“Michel\” \“Albert\” \“Thérèse\” \“Benoit\” \"a\""
argument_air07 = "\"1\" \"3\" \"4\" \"2\""
argument_air08 = "\"10\" \"20\" \"30\" \"fusion\" \"15\" \"25\" \"35\""
argument_air09 = "\“Michel\” \“Albert\” \“Thérèse\” \“Benoit\” \"Lola\""
argument_air10 = "\"a.txt\""
argument_air11 = "\"0\"  \"5\""
argument_air12 = "\"6\" \"5\" \"4\" \"3\" \"2\" \"1\""
crazy_argument = "\"Salut les gars\""

run_air00 = `ruby air00.rb #{argument_air00}`
run_air01 = `ruby air01.rb #{argument_air01}`
run_air02 = `ruby air02.rb #{argument_air02}`
run_air03 = `ruby air03.rb #{argument_air03}`
run_air04 = `ruby air04.rb #{argument_air04}`
run_air05 = `ruby air05.rb #{argument_air05}`
run_air06 = `ruby air06.rb #{argument_air06}`
run_air07 = `ruby air07.rb #{argument_air07}`
run_air08 = `ruby air08.rb #{argument_air08}`
run_air09 = `ruby air09.rb #{argument_air09}`
run_air10 = `ruby air10.rb #{argument_air10}`
run_air11 = `ruby air11.rb #{argument_air11}` 
run_air12 = `ruby air12.rb #{argument_air12}` 

result_air00 = "Salut\nles\ngars\n"
result_air01 = "Crevette magique dans \n mer des étoiles\n"
result_air02 = "je test des truc\n"
result_air03 = "monsieur\n"
result_air04 = "Helo milady, bien ou quoi ?\n"
result_air05 = "3 4 5 6 7"
result_air06 = "“Michel” “Thérèse” “Benoit”"
result_air07 = "1 2 3 4"
result_air08 = "10 15 20 25 30 35"
result_air09 = "“Albert”, “Thérèse”, “Benoit”, Lola, “Michel”\n"
result_air10 = "je danse le mia\n\"hello word\"\n"
result_air11 = "    0\n   000\n  00000\n 0000000\n000000000\n"
result_air12 = "1 2 3 4 5 6"

#RESOLUTION
(0..12).each do |i| 

  value = sprintf('%02d', i) 
  run_value = `ruby air#{value}.rb #{eval("argument_air#{value}")}`
  result_value = "#{eval("result_air#{value}")}" 
  run_crasy_test = `ruby air#{value}.rb #{crazy_argument} 2> #{File::NULL}`
  
  test_exist = does_exist(value)
  test_value = compare(run_value, result_value, value)
  test_crazy = fun(run_crasy_test, result_value , value)

  unit_test << test_exist << test_value << test_crazy
end

#AFFICHAGE
puts unit_test
test_cumul = unit_test.size
puts "\e[32mTotal success:(#{$compteur_succes}/#{test_cumul})\e[0m"
#puts $test_failure le petit plus pour le suivit des erreurs





