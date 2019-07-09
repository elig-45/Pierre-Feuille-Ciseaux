pari = {valeur = 0, type = nil}

function pari:new(o, valeur, type)
	o = o or {}
	setmetatable(o, self)
	self.__index = self
	self.valeur = valeur
	self.type = type
	return o
end
function findType(texte)
	os.execute("clear")
	print(texte)
	return io.read()
end

monPari = pari:new(nil, 0, findType("Voulez-vous parier sur une couleur ou un nombre ?"))
print(monPari.type)
