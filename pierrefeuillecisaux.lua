math.randomseed(os.time()) -- Faut le récup

------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------
print("Joueur 1, entre ton nom ici :")                                                        --
Joueur1 = io.read()                                                                           --
                                                                                              --
print("Joueur 2, entre ton nom ici :")                                                        --
Joueur2 = io.read()                                                                           --
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

function readInput(player)
	print(player, "Entrez Pierre, Feuille ou Ciseaux")
	userInput = io.read() -- Récupération de l'entrée utilisateur et stockage dans variable "userInput"
	userInput = string.lower(userInput) -- Mise en minuscules du texte contenu dans "userInput"
	os.execute("clear") -- Pour cacher ce que le joueur 1 a entré
	return userInput

end


userInput1 = readInput(Joueur1)
userInput2 = readInput(Joueur2)





if (userInput1 == "pierre" and userInput2 == "ciseaux") then
	victoire = Joueur1
elseif (userInput1 == "ciseaux" and userInput2 == "feuille") then
	victoire = Joueur1
elseif (userInput1 == "feuille" and userInput2 == "pierre") then
	victoire = Joueur1
elseif (userInput1 == userInput2) then
	victoire = false
else
	victoire = Joueur2
end

P = "pierre"
F = "feuille"
C = "ciseaux"

if (victoire) then
	print(victoire .. " a gagné !")
else
	print("Il y a égalité.")
end