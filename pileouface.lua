-- Variables
math.randomseed(os.time())
userInput = io.read()
face = math.random(1, 2)


if (face == 1) then
	face = "pile"
elseif (face == 2) then
	face = "face"
end

if (userInput == face) then
	victory = true
elseif (userInput ~= face) then
	victory = false
end

if (victory == true) then
	print("Félicitations ! Vous avez gagné, la pièce est bien tombée sur " .. face .. " .")
else
	print("Oups, tu as perdu, la pièce est tombée sur " .. face .. " .")
end