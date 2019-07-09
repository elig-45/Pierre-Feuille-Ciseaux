require "functions"
i = 1

math.randomseed(os.time())

nbGagnant = math.random(0,36)

if (math.mod(nbGagnant, 2) == 0) then
	couleurGagnante = "rouge"
else
	couleurGagnante = "noir"
end

-- print(caseGagnante)

while (nbJoueurs == nil or nbJoueurs > 10 or nbJoueurs < 1) do
	nbJoueurs = tonumber(demander("Combien de joueurs vont jouer ?"))
	annonce("Veuillez entrer une valeur numérique entre 0 et 10 pour commencer à jouer.")
end

annonce(tostring(nbJoueurs) .. " joueur(s) vont/va jouer.")
ask("                                                    Entrée pour contiuer !")


joueurs = {}

while (i <= nbJoueurs) do
	joueurs[i] = username(i)
	i = i + 1
end

i = 1
choix = {}

while (i <= nbJoueurs) do
	annonce("Tour de " .. tostring(joueurs[i]) .. " \n Vous allez maintenant devoir choisir une couleur ou un nombre sur lequel vous allez parier.")
	choix[i] = ask("Veuillez entrer ici la couleur ou le nombre choisi :")
	i = i + 1
end

for i=1, nbJoueurs do
	if (choix[i] == nbGagnant or choix[i] == couleurGagnante) then
		annonce(joueurs[i] .. " a gagné")
	else
		annonce("Ex-aequo, personne n'a gagné... 😭")
	end
end

print("Le numéro gagnant est le " .. tostring(nbGagnant) .. " " .. tostring(couleurGagnante))