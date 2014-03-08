%name.t
%Credits for game
colorback (black)
cls

%Draw stars procedure
var x2, y2 : int
proc stars
	for i : 1 .. 200
		x2 := Rand.Int( 0, maxx )
		y2 := Rand.Int( 0, maxy )
		Draw.Dot (x2, y2, white)
	end for
end stars


%Shooting star
var x3, y3 : int := 0

%Colours for the name
var colourtype : int %First name
var colourtype2 : int %Last name

proc makeName
	var creditsFont : int := Font.New ("mono:70:bold,italic")
	var chars : array char of boolean
	loop
		Font.Draw ("Credits:", 0, 620, creditsFont, 75)
		stars
		%Create a shooting star
		Draw.Star (x3, y3, x3 + 10, y3 + 10, white)
		Draw.Star (x3 - 20, y3 - 20, x3 - 10, y3 - 10, white)
		Draw.Star (x3 - 40, y3 - 40, x3 - 30, y3 - 30, white)
		Draw.Star (x3 - 60, y3 - 60, x3 - 50, y3 - 50, white)
		Draw.Star (x3 - 80, y3 - 80, x3 - 70, y3 - 70, white)
		Draw.Star (x3 - 100, y3 - 100, x3 - 90, y3 - 90, white)
		x3 := x3 + 15
		y3 := y3 + 15
		if y3 >= maxy then
			y3 := 0
		end if
		if x3 >= maxx then
			x3 := 0
		end if

		Input.KeyDown (chars)
		if chars (KEY_ESC) then
			exit
		end if
		%fork shootingstar
		%fork stars
		randint (colourtype, 0, maxcolor)
		%M
		Draw.Line (1, 300, 1, 400, colourtype)
		Draw.Line (1, 400, 51, 300, colourtype)
		Draw.Line (51, 300, 101, 400, colourtype)
		Draw.Line (101, 400, 101, 300, colourtype)

		%i
		Draw.Line (131, 300, 131, 359, colourtype)
		Draw.Star (111, 360, 151, 400, colourtype)

		%c
		Draw.Arc (180, 330, 30, 30, 70, 290, colourtype)

		%h
		Draw.Line (210, 399, 210, 300, colourtype)
		Draw.Arc (230, 340, 20, 20, 0, 180, colourtype)
		Draw.Line (250, 340, 250, 300, colourtype)

		%A
		Draw.Oval (290, 320, 25, 25, colourtype)
		Draw.ThickLine (315, 345, 315, 295, 2, colourtype)

		%e
		Draw.Arc (345, 320, 20, 20, 0, 300, colourtype)
		Draw.Line (325, 320, 365, 320, colourtype)

		%l
		Draw.Line (370, 400, 370, 300, colourtype)

		randint (colourtype2, 0, maxcolor)
		%P
		Draw.Line (1, 295, 1, 200, colourtype2)
		Draw.Arc (3, 265, 30, 30, 270, 90, colourtype2)

		%a
		Draw.Oval (70, 225, 30, 30, colourtype2)
		Draw.ThickLine (100, 255, 100, 195, 2, colourtype2)

		%r
		Draw.Line (120, 255, 120, 200, colourtype2)
		Draw.Arc (140, 235, 20, 20, 0, 180, colourtype2)

		%r
		Draw.Line (165, 255, 165, 200, colourtype2)
		Draw.Arc (185, 235, 20, 20, 0, 180, colourtype2)

		%o
		Draw.Oval (240, 225, 30, 30, colourtype2)

		%T
		Draw.Line (320, 280, 320, 200, colourtype2)
		Draw.Line (290, 240, 350, 240, colourtype2)

		%t
		Draw.Line (380, 280, 380, 200, colourtype2)
		Draw.Line (350, 240, 410, 240, colourtype2)

		%Draw the credits
		delay (100)
		View.Update
		cls
	end loop
end makeName
