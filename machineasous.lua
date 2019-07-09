require "functions.lua"
math.randomseed(os.time())

resultat = {}

for i=1, 3 do
	resultat[i] = math.random(1, 3)
end

demander("Cliquez pour lancer la machine à sous...")

for i = 1, 3 do
	print(resultat[i], " ")
end