%key.t
View.Set ("graphics:1000;700,nobuttonbar")

function makeKey (keyColour : int) : int
	%The key
	cls
	Draw.Arc (463, 300, 80, 80, 220, 142, black)
	Draw.Oval (460, 300, 30, 30, black)
	Draw.Line (400, 250, 400, 350, black)
	Draw.Line (150, 250, 400, 250, black)
	Draw.Line (200, 350, 400, 350, black)
	%Pointy part of key
	Draw.Line (200, 350, 150, 250, black)
	%Rectangle in the key
	Draw.Box (225, 275, 350, 325, black)
	%Fill the key
	Draw.Fill (220, 300, keyColour, black)
	Draw.Fill (500, 300, keyColour, black)
	result Pic.New (150, 220, 543, 380)
end makeKey
