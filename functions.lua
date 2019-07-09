function annonce(texte)
	os.execute("clear")
	print(texte)
end

function demander(texte)
	annonce(texte)
	return io.read()
end

function ask(texte)
	print(texte)
	return io.read()
end

function username(var)
	return demander("-------------------- \n Joueur " .. var .. " \n  Choisissez un pseudo :")
end