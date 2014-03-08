%game.t
include "key.t"
View.Set ("offscreenonly;graphics:1000;700,nobuttonbar,noecho,nocursor,title: Michael's Game")
%Background colour is dark grey
colorback (21)
cls
%Procedures that will be used in the came
forward proc fenceScene
forward proc fenceGateScene
forward proc stairScene
forward proc elevatorScene
forward proc cellScene
forward proc keyScene
forward proc bustScene
forward proc securityGuardScene
forward proc slapScene
forward proc basementScene
forward proc gateScene
forward proc swimScene
forward proc winSwimScene
forward proc familyScene
forward proc swimTime

process playSound (filename : string)
	Music.PlayFile (filename)
end playSound

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%THE GAME%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
proc playGame
	%Clear the screen
	cls
	%The game begins
	cellScene
	keyScene
	%Meet the security guard after getting out of jail
	securityGuardScene
	%Character slaps the security guard
	slapScene
	%Elevator or stairs
	basementScene
	%Go the fence or the gate
	fenceGateScene
	swimTime
	swimScene
end playGame
%playGame

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%SCENES%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
body proc cellScene
	var jailCell : int := Pic.FileNew ("images/jailcell.bmp")
	var sword : int := Pic.FileNew ("images/sword.bmp")
	var face : int := Pic.FileNew ("images/face.bmp")
	var beginningFont : int := Font.New ("mono:25:bold")
	var scaryFont : int := Font.New ("Palatino:20:bold,italic,underline")
	Pic.Draw (jailCell, 0, 0, picCopy)
	Font.Draw ("You have been locked in a jail cell.", 0, 650, beginningFont, white)
	Font.Draw ("You must go through a series of challenges to get", 0, 600, beginningFont, white)
	Font.Draw ("out of the jail.", 0, 575, beginningFont, white)
	Font.Draw ("If you can't complete enough of the challenges...", 0, 525, beginningFont, white)
	View.Update
	delay (2500)
	Pic.Draw (sword, 20, 200, picMerge)
	View.Update
	delay (2000)
	Pic.Draw (face, 160, 250, picMerge)
	View.Update
	delay (1000)
	cls
	View.Update
	for i : 1 .. 360 by 8
		Pic.Draw (jailCell, 0, 0, picCopy)
		Pic.Draw (face, 160, 250, picMerge)
		Pic.Draw (sword, 20 + i, 200, picMerge)
		View.Update
		cls
	end for
	cls
	View.Update
	Pic.Draw (jailCell, 0, 0, picCopy)
	Pic.Draw (sword, 370, 200, picMerge)
	Draw.FillOval (160 + (Pic.Width (face) div 2), 250 + (Pic.Height (face) div 2), Pic.Width (face) div 2, Pic.Height (face) div 2, brightred)
	Font.Draw ("AHHHH!", 220, 350, scaryFont, red)
	View.Update
	delay (2000)
	cls
	Pic.Draw (jailCell, 0, 0, picCopy)
	Font.Draw ("BEGIN", 0, 650, beginningFont, white)
	View.Update
	delay (2500)
	Font.Free (beginningFont)
	Font.Free (scaryFont)
	Pic.Free (face)
	Pic.Free (sword)
	Pic.Free (jailCell)

end cellScene

body proc keyScene
	var blueKey : int := makeKey (blue)
	var redKey : int := makeKey (red)
	var brightredKey : int := makeKey (brightred)
	var greenKey : int := makeKey (green)
	var gameFont : int := Font.New ("serif:30:bold,underline")
	var beginningFont : int := Font.New ("mono:25:bold")
	var smallFont : int := Font.New ("sans serif:14:italic")
	cls
	Font.Draw ("First challenge: Keys", 0, 670, gameFont, white)
	%Put numbers beside the keys
	Pic.Draw (blueKey, 50, 500, picCopy)
	Font.Draw ("1.", 40, 600, gameFont, blue)
	Pic.Draw (redKey, 450, 500, picCopy)
	Font.Draw ("2.", 450, 600, gameFont, red)
	Pic.Draw (brightredKey, 50, 300, picCopy)
	Font.Draw ("3.", 40, 400, gameFont, brightred)
	Pic.Draw (greenKey, 450, 300, picCopy)
	Font.Draw ("4.", 450, 400, gameFont, green)
	Draw.ThickLine (0, 280, maxx, 280, 5, brown)
	%Correct answer is brightred key
	View.Update
	delay (1000)
	%Message
	Font.Draw ("You have been given 4 keys by one of your jail mate, and only one of the fits in the key hole.", 0, 250, smallFont, white)
	Font.Draw ("You have to decide which one will fit.", 0, 230, smallFont, white)
	Font.Draw ("Get the wrong key, and you will have to bust out of jail.", 0, 210, smallFont, white)
	%Key hole
	Draw.FillOval (130, 103, 70, 70, black)
	Draw.FillBox (115, 60, 145, 150, brightred)
	View.Update
	delay (2000)
	Font.Draw ("Which key is it? (1, 2, 3, or 4)", 220, 180, beginningFont, grey)
	View.Update
	delay (500)
	Font.Draw ("Choose now.", 220, 150, beginningFont, grey)
	View.Update
	%Variables for input
	var choice : string (1)
	var yesOrNo : string (1)
	loop
		getch (choice)
		if (choice >= '1' and choice <= '4') then
			exit
		else
			Font.Draw ("Try again.", 300, 120, smallFont, white)
			Font.Draw ("Invalid input.", 300, 100, smallFont, white)
			View.Update
		end if
	end loop
	Draw.FillBox (205, 95, 500, 140, 21)
	%Check to see if user's answer is right(bright red key = 3
	if choice = '3' then
		Font.Draw ("You can go, you got it right. This time.", 205, 55, beginningFont, 93)
	else
		Font.Draw ("Foolish person, you got it wrong.", 205, 75, smallFont, 93)
		Font.Draw ("You must now bust out of jail!", 205, 55, smallFont, 93)
		View.Update
		delay (2000)
		cls
		bustScene
	end if
	View.Update
	delay (2000)
	Pic.Free (blueKey)
	Pic.Free (redKey)
	Pic.Free (greenKey)
	Pic.Free (brightredKey)
	Font.Free (smallFont)
	Font.Free (beginningFont)
	Font.Free (gameFont)
end keyScene

body proc bustScene
	var baseballBat : int := Pic.FileNew ("images/baseballbat.bmp")
	var beginningFont : int := Font.New ("mono:25:bold")
	var scaryFont : int := Font.New ("Palatino:20:bold,italic,underline")
	var securityGuard : int := Pic.FileNew ("images/securityguard.bmp")
	for decreasing i : 700 .. 250 by 15
		Font.Draw ("You're busting out of jail!", 250, 600, beginningFont, white)
		Draw.Box (100, 0, 250, maxy, black)
		Draw.Fill (120, 10, brown, black)
		for j : 1 .. maxy by 70
			Draw.Line (100, j, 250, j, black)
		end for
		Draw.Line (175, 0, 175, maxx, black)
		Pic.Draw (baseballBat, i, 300, picMerge)
		View.Update
		cls
	end for
	fork playSound ("sounds/boom.wav")
	delay (500)
	Draw.FillBox (0, 0, maxx, maxy, white)
	Pic.ScreenLoad ("images/jailcell.bmp", 0, 0, picCopy)
	Font.Draw ("BOOM!", 300, 200, beginningFont, black)
	Font.Draw ("You busted out of jail!", 300, 180, beginningFont, black)
	View.Update
	delay (1900)
	cls
	Pic.Free (baseballBat)
	Pic.Free (securityGuard)
	Font.Free (scaryFont)
	Font.Free (beginningFont)
end bustScene

body proc securityGuardScene
	fork playSound ("sounds/emergency.wav")
	var securityGuard : int := Pic.FileNew ("images/securityguard.bmp")
	var scaryFont : int := Font.New ("palatino:20:bold,italic,underline")
	var character1 : int := Pic.FileNew ("images/character.bmp")

	var scaledChar : int := Pic.Scale (character1, 300, 500)
	var baseballBat : int := Pic.FileNew ("images/baseballbat.bmp")
	var smallBat : int := Pic.Scale (baseballBat, 75, 200)
	%Security guard time!
	cls
	Draw.Oval (740, 585, 245, 60, black)
	Pic.Draw (securityGuard, 0, 0, picMerge)
	Font.Draw ("What are you doing here?", 600, 600, scaryFont, blue)
	Font.Draw ("I DIDN'T LET YOU OUT!", 600, 575, scaryFont, blue)
	Font.Draw ("AHHHHHHHHHH!!", 600, 550, scaryFont, blue)
	View.Update
	delay (3000)
	View.Update
	%Go over the text
	Draw.FillBox (495, 575, 985, 645, 21)
	for decreasing i : maxx + 200 .. 500 by 25
		%Draw steam
		Pic.Draw (securityGuard, 0, 0, picMerge)
		%Make the security guards face red
		Draw.Fill (200, 600, 12, black)
		Pic.Draw (scaledChar, i, 0, picMerge)
		%Draw steam
		Draw.FillOval (350, 650, 10, 10, grey)
		Draw.FillOval (345, 630, 8, 8, grey)
		Draw.FillOval (340, 620, 6, 6, grey)
		Draw.FillOval (80, 650, 10, 10, grey)
		Draw.FillOval (85, 630, 8, 8, grey)
		Draw.FillOval (90, 620, 6, 6, grey)
		View.Update
		cls
	end for
	Draw.FillOval (350, 650, 10, 10, grey)
	Draw.FillOval (345, 630, 8, 8, grey)
	Draw.FillOval (340, 620, 6, 6, grey)
	Draw.FillOval (80, 650, 10, 10, grey)
	Draw.FillOval (85, 630, 8, 8, grey)
	Draw.FillOval (90, 620, 6, 6, grey)
	Pic.Draw (securityGuard, 0, 0, picMerge)
	Draw.Fill (200, 600, 12, black)
	Pic.Draw (scaledChar, 500, 0, picMerge)
	Font.Draw ("Uh-oh...", 700, 500, scaryFont, white)
	View.Update
	delay (1000)
	for decreasing i : 0 .. -45 by 10
		Draw.FillOval (350, 650, 10, 10, grey)
		Draw.FillOval (345, 630, 8, 8, grey)
		Draw.FillOval (340, 620, 6, 6, grey)
		Draw.FillOval (80, 650, 10, 10, grey)
		Draw.FillOval (85, 630, 8, 8, grey)
		Draw.FillOval (90, 620, 6, 6, grey)
		Pic.Draw (securityGuard, 0, 0, picMerge)
		Draw.Fill (200, 600, 12, black)
		Pic.Draw (scaledChar, 500, 0, picMerge)
		Font.Draw ("Uh-oh...", 700, 500, scaryFont, white)
		Pic.Draw (Pic.Rotate (smallBat, i, 37, 0), 430, 250, picMerge)
		View.Update
		cls
	end for
	%Smoke
	Draw.FillOval (350, 650, 10, 10, grey)
	Draw.FillOval (345, 630, 8, 8, grey)
	Draw.FillOval (340, 620, 6, 6, grey)
	Draw.FillOval (80, 650, 10, 10, grey)
	Draw.FillOval (85, 630, 8, 8, grey)
	Draw.FillOval (90, 620, 6, 6, grey)
	Pic.Draw (securityGuard, 0, 0, picMerge)
	Draw.Fill (200, 600, 12, black)
	Pic.Draw (scaledChar, 600, 0, picMerge)
	View.Update
	Font.Draw ("OUCH!", 800, 550, scaryFont, white)
	Font.Draw ("I have to go!", 800, 525, scaryFont, white)
	View.Update
	delay (1500)
	Font.Free (scaryFont)
	Pic.Free (smallBat)
	Pic.Free (scaledChar)
	Pic.Free (securityGuard)
	Pic.Free (baseballBat)
	Pic.Free (character1)
end securityGuardScene

body proc slapScene
	var securityGuard : int := Pic.FileNew ("images/securityguard.bmp")
	var hand : int := Pic.FileNew ("images/hand.bmp")
	var bigGuard : int := Pic.Scale (securityGuard, 1200, 800)
	cls
	fork playSound ("sounds/punch.wav")
	for decreasing i : maxx .. -110 by 30
		Pic.Draw (bigGuard, -400, -600, picCopy)
		Pic.Draw (hand, i, 0, picCopy)
		View.Update
		cls
	end for
	var bigFont : int := Font.New ("mono:100:bold")
	Font.Draw ("SLAP!", 0, 200, bigFont, white)
	View.Update
	delay (1000)
	Pic.Free (hand)
	Pic.Free (bigGuard)
	Pic.Free (securityGuard)
end slapScene

body proc basementScene
	var elevator : int := Pic.FileNew ("images/elevator.bmp")
	var smallElevator : int := Pic.Scale (elevator, 200, 500)
	var stairs : int := Pic.FileNew ("images/stairs.bmp")
	var smallStairs : int := Pic.Scale (stairs, 350, 300)
	var character1 : int := Pic.FileNew ("images/character.bmp")
	var beginningFont : int := Font.New ("mono:25:bold")

	var scaledChar : int := Pic.Scale (character1, 300, 500)
	var chars : array char of boolean
	cls
	for i : 0 .. maxx by 20
		Draw.Line (i, 0, i, maxy, black)
	end for
	Pic.SetTransparentColor (smallElevator, 21)
	Pic.Draw (smallElevator, 0, 0, picMerge)
	var eleFont : int := Font.New ("serif:25:italic,underline")
	Font.Draw ("'e'", 60, 300, eleFont, white)
	Pic.Draw (smallStairs, 650, 0, picMerge)
	Font.Draw ("Stairs", 800, 100, beginningFont, white)
	Font.Draw ("'s'", 850, 70, eleFont, white)
	Pic.SetTransparentColor (scaledChar, 21)
	Pic.Draw (scaledChar, 320, 0, picMerge)
	Font.Draw ("????", 500, 500, eleFont, white)
	Font.Draw ("Go upstairs using the elevator or the stairs.", 200, 600, eleFont, white)
	View.Update
	loop
		Input.KeyDown (chars)
		if chars ('e') or chars ('E') then
			elevatorScene
			exit
		end if
		if chars ('s') or chars ('S') then
			stairScene
			exit
		end if
	end loop
	Pic.Free (smallStairs)
	Pic.Free (scaledChar)
	Pic.Free (character1)
	Pic.Free (smallElevator)
	Font.Free (eleFont)
	Font.Free (beginningFont)
	Pic.Free (elevator)
	Pic.Free (stairs)

end basementScene

body proc stairScene
	cls
	Draw.FillBox (0, 0, maxx, maxy, 21)
	var stairs1 : int := Pic.FileNew ("images/stairs.bmp")
	stairs1 := Pic.Scale (stairs1, 800, 600)
	var sCharacter : int := Pic.FileNew ("images/character.bmp")
	sCharacter := Pic.Scale (sCharacter, 100, 175)
	Pic.SetTransparentColor (sCharacter, 21)
	var y : int := 0
	for x : 100 .. 700 by 85
		Pic.Draw (stairs1, 200, 0, picMerge)
		Pic.Draw (sCharacter, x, y, picMerge)
		y := y + 85
		View.Update
		cls
		delay (700)
	end for
	var font : int := Font.New ("mono:20")
	var numOne, numTwo : int
	numOne := Rand.Int( 200, 400 )
	numTwo := Rand.Int( 600, 800 )
	var question : string := "What is " + intstr( numOne ) + " + " + intstr( numTwo ) + "?"
	loop
		Pic.Draw (stairs1, 200, 0, picMerge)
		Pic.Draw (sCharacter, 700, 600, picMerge)
		Font.Draw ("To finish, you must answer this question:", 0, 675, font, white)
		Font.Draw (question, 0, 650, font, white)
		View.Update
		var answer : int
		get answer
		if answer = (numOne + numTwo) then
			Font.Draw (intstr (answer) + " is correct!", 0, 625, font, white)
			Font.Draw ("You can go now.", 0, 600, font, white)
			View.Update
			delay (1500)
			exit
		else
			Font.Draw (intstr (answer) + " is wrong. Try again.", 0, 625, font, white)
			View.Update
			delay (1500)
			Draw.FillBox (0, 615, 500, 649, 21)
			View.Update
		end if
	end loop
	for x : 700 .. 1000 by 10
		Pic.Draw (stairs1, 200, 0, picMerge)
		Pic.Draw (sCharacter, x, 600, picMerge)
		View.Update
		cls
	end for
	Pic.Free (sCharacter)
	Pic.Free (stairs1)
	Font.Free (font)
end stairScene

body proc fenceGateScene
	var chars : array char of boolean
	cls
	var fence : int := Pic.FileNew ("images/fence.bmp")
	fence := Pic.Scale (fence, 300, 200)
	var gate : int := Pic.FileNew ("images/gate.bmp")
	var cave : int := Pic.FileNew ("images/cave.bmp")
	cave := Pic.Scale (cave, 350, 700)
	gate := Pic.Scale (gate, 150, 200)
	var character12 : int := Pic.FileNew ("images/character.bmp")
	character12 := Pic.Scale (character12, 350, 500)
	Pic.SetTransparentColor (character12, 21)

	var font : int := Font.New ("Palatino:45:bold")

	Pic.Draw (fence, 0, 0, picCopy)
	Pic.Draw (fence, 0, 200, picCopy)
	Pic.Draw (fence, 0, 400, picCopy)
	Font.Draw ("Fence: 'f'", 0, 600, font, red)
	Pic.Draw (cave, 650, 0, picCopy)
	Pic.Draw (gate, 750, 00, picCopy)
	Font.Draw ("Gate: 'g'", 720, 600, font, red)
	Pic.Draw (character12, 300, 0, picMerge)
	View.Update
	loop
		Input.KeyDown (chars)
		if chars ('f') or chars ('F') then
			fenceScene
			exit
		end if
		if chars ('g') or chars ('G') then
			gateScene
			exit
		end if
	end loop
	Pic.Free (character12)
	Pic.Free (cave)
	Pic.Free (gate)
	Pic.Free (fence)
	Font.Free (font)
end fenceGateScene

body proc fenceScene
	cls
	var bolt : int := Pic.FileNew ("images/lightningbolt.bmp")
	var character : int := Pic.FileNew ("images/character.bmp")
	character := Pic.Scale (character, 320, 400)
	Pic.SetTransparentColor (character, 21)
	var fence : int := Pic.FileNew ("images/fence.bmp")
	var face : int := Pic.FileNew ("images/face.bmp")
	fence := Pic.Scale (fence, 1000, 300)
	var font : int := Font.New ("mono:22")
	Font.Draw ("There are people on the other side of the fence.", 0, 650, font, yellow)
	Font.Draw ("When you see an object, click on it to scare them off.", 0, 620, font, yellow)
	Font.Draw ("After getting 10 objects, you can get past.", 0, 590, font, yellow)
	View.Update
	delay (6000)
	cls
	Pic.Draw (fence, 0, 200, picCopy)
	Draw.Fill (1, 1, green, black)
	Pic.Draw (character, 300, 0, picMerge)
	Draw.FillOval (460, 350, 55, 55, 87)
	Draw.FillOval (460, 240, 50, 50, yellow)
	var back : int := Pic.New (0, 0, maxx, maxy)
	cls
	var chars : array char of boolean
	var x, y, b : int
	var boxx, boxy : int
	var newBox : boolean := true
	var times : int := 0
	var bigFont : int := Font.New ("Palatino:45:bold")
	loop
		if newBox then
			boxx := Rand.Int (0, maxx)
			boxy := Rand.Int (530, 580)
			newBox := false
		end if
		if times >= 10 then
			exit
		end if
		Mouse.Where (x, y, b)
		if x > boxx and x < boxx + 50 and y > boxy and y < boxy + 50 and b = 1 then
			fork playSound ("sounds/fence.wav")
			times := times + 1
			newBox := true
		end if
		Pic.Draw (back, 0, 0, picCopy)
		Draw.FillBox (boxx, boxy, boxx + 50, boxy + 50, black)
		Font.Draw ("Objects hit: " + intstr (times), 0, 650, bigFont, yellow)
		View.Update
		cls
	end loop
	Pic.Free (back)
	Font.Free (bigFont)
	Font.Free (font)
	Pic.Free (fence)
	Pic.Free (bolt)
	Pic.Free (character)
end fenceScene

body proc elevatorScene
	cls
	var elevator2 : int := Pic.FileNew ("images/insideelevator.bmp")
	Pic.Draw (elevator2, 0, 0, picCopy)
	View.Update
	var x, y, b : int
	var elevatorFont : int := Font.New ("Palatino:40:bold")
	loop
		Mouse.Where (x, y, b)
		if b = 1 and x > 70 and x < 110 and y > 280 and y < 320 then
			Font.Draw ("You did", 800, 600, elevatorFont, brightred)
			Font.Draw ("it!", 800, 550, elevatorFont, brightred)
			View.Update
			delay (1500)
			return
		end if
	end loop
	Font.Free (elevatorFont)
	Pic.Free (elevator2)
end elevatorScene

body proc swimTime
	cls
	var font : int := Font.New( "mono:30:italic" )
	var fish : int := Pic.FileNew( "images/fish.bmp" )
	Pic.ScreenLoad( "images/water.bmp", 0, 0, picCopy )
	Font.Draw( "Good job!", 0, 665, font, white )
	Font.Draw( "Time to swim!", 0, 630, font, white )
	var character : int := Pic.FileNew( "images/character.bmp" )
	Pic.SetTransparentColor( character, 21 )
	Pic.Draw( character, 400, 0, picMerge )
	Pic.Draw( fish, 100, 200, picMerge )
	Pic.Draw( fish, 200, 350, picMerge )
	Pic.Draw( fish, 300, 75, picMerge )
	Pic.Draw( fish, 30, 400, picMerge )
	View.Update
	delay( 4000 )
	Font.Free( font )
	Pic.Free( fish )
end swimTime

body proc gateScene
	cls
	var font : int := Font.New ("serif:30:italic")
	Pic.ScreenLoad ("images/mountain.bmp", 0, 0, picCopy)
	Font.Draw ("You are going to be placed on a mountain.", 0, 500, font, black)
	Font.Draw ("Bolders will be coming down the mountain.", 0, 460, font, black)
	Font.Draw ("You will have avoid them by jumping over them.", 0, 420, font, black)
	Font.Draw ("Use the up arrow key to jump.", 0, 380, font, black)
	Font.Draw ("You will avoid them for 30 seconds.", 0, 340, font, black)
	View.Update
	delay (6000)
	var mountain : int := Pic.FileNew ("images/mountain.bmp")
	var character : int := Pic.FileNew ("images/character.bmp")
	var bolder : int := Pic.FileNew ("images/cookie.bmp")
	bolder := Pic.Scale (bolder, 100, 100)
	Pic.SetTransparentColor (bolder, 21)
	character := Pic.Scale (character, 100, 230)
	Pic.SetTransparentColor (character, 21)
	%Bolders
	var bolderx : int
	var boldery : int

	var xspeed : int := 5
	var x : int := 600
	var y : int := 151
	var bolderxspeed : int := xspeed + 1
	var bolderyspeed : int := 10
	var vely : int := 0
	var jumping : boolean := false
	var chars : array char of boolean
	var startTime : int
	var exitNow : boolean := false
	loop
		bolderx := -25
		boldery := 701
		xspeed := 5
		bolderxspeed := xspeed + 1
		bolderyspeed := -10
		startTime := Time.Elapsed
		loop
			if Time.Elapsed - startTime > 35000 then
				exitNow := true
				exit
			end if
			Input.KeyDown (chars)
			if chars (KEY_LEFT_ARROW) then
				x := x - 4
			end if
			if chars (KEY_RIGHT_ARROW) then
				x := x + 4
			end if
			if chars (KEY_UP_ARROW) and not jumping then
				vely := 21
				jumping := true
			end if
			if x + Pic.Width (character) > maxx then
				x := maxx - Pic.Width (character)
			end if
			if x < 280 then
				x := 280
			end if
			if jumping then
				vely := vely - 1
			end if
			bolderx := bolderx + bolderxspeed
			boldery := boldery + bolderyspeed
			if boldery <= 151 then
				bolderxspeed := xspeed
				bolderyspeed := 0
			end if
			if bolderx > maxx then
				bolderx := -20
				boldery := 701
				bolderxspeed := xspeed + 1
				bolderyspeed := -10
			end if
			%Collision
			if bolderx + Pic.Width (bolder) > x and bolderx < x + Pic.Width (character) and boldery + Pic.Height (bolder) > y then
				cls
				Font.Draw ("You got hit!", 0, 670, font, grey)
				Font.Draw ("Hit any key to try again...", 0, 640, font, grey)
				View.Update
				delay (1000)
				Input.Flush
				var ch : char
				ch := getchar
				exit
			end if

			y := y + vely
			if y <= 150 then
				jumping := false
				vely := 0
				y := 151
			end if
			Pic.Draw (mountain, 0, 0, picCopy)
			Pic.Draw (bolder, bolderx, boldery, picMerge)
			Pic.Draw (character, x, y, picMerge)
			View.Update
			delay (10)
			cls
		end loop
		if exitNow then
			exit
		end if
	end loop
	cls
	Font.Draw ("FINISHED", 0, 0, font, white)
	View.Update
	delay (2000)
end gateScene

type rockType :
	record
		x : int
		y : int
	end record

body proc swimScene
	cls
	var character : int := Pic.FileNew ("images/character.bmp")
	var water : int := Pic.FileNew ("images/water.bmp")
	var rock : int := Pic.FileNew ("images/rock.bmp")
	var chars : array char of boolean
	character := Pic.Scale (character, 150, 300)
	character := Pic.Rotate (character, -90, -10, Pic.Height (character) div 2)
	Pic.SetTransparentColor (character, 21)
	var x, y : int := 0
	var exitNow : boolean := false
	var redo : boolean := false
	var font : int := Font.New ("mono:45:italic,underline")
	var font2 : int := Font.New ("arial:18")
	Pic.Draw (water, 0, 0, picCopy)
	Font.Draw ("You will have avoid rocks coming your way for 30 seconds.", 0, 650, font2, black)
	Font.Draw ("You can move up and down.", 0, 625, font2, black)
	Font.Draw ("After 30 seconds, you will get to see your family.", 0, 600, font2, black)
	View.Update
	delay (6000)
	cls

	var startTime : int
	var rocks : array 1 .. 2 of rockType
	loop
		startTime := Time.Elapsed
		for i : 1 .. upper (rocks)
			rocks (i).x := maxx
			rocks (i).y := Rand.Int (1, maxy - Pic.Height (rock))
		end for
		loop
			if Time.Elapsed - startTime > 30000 then
				exitNow := true
			end if
			Input.KeyDown (chars)
			if chars (KEY_UP_ARROW) and y < maxy - Pic.Height (character) then
				y := y + 5
			end if
			if chars (KEY_DOWN_ARROW) and y > 0 then
				y := y - 5
			end if
			for i : 1 .. upper (rocks)
				rocks (i).x := rocks (i).x - 6
			end for
			if rocks (1).x + Pic.Width (rock) < 0 then
				for i : 1 .. upper (rocks)
					rocks (i).x := maxx
					rocks (i).y := Rand.Int (1, maxy - Pic.Height (rock))
				end for
			end if

			%Collision
			for i : 1 .. upper (rocks)
				if (x + Pic.Width (character) > rocks (i).x and rocks (i).y < y + Pic.Height (character) and rocks (i).y + Pic.Height (rock) > y) then
					cls
					Font.Draw ("You got hit by a rock!", 0, 320, font, brightred)
					Font.Draw ("Press any key to try again.", 0, 250, font, brightred)
					Draw.Line (400, 650, 400, 500, black)
					Draw.Line (500, 650, 500, 500, black)
					Draw.Arc (450, 440, 60, 50, 0, 180, black)
					View.Update
					delay (1000)
					Input.Flush
					var ch : char
					ch := getchar
					redo := true
				end if
			end for
			if exitNow or redo then
				redo := false
				exit
			end if
			Pic.Draw (water, 0, 0, picCopy)
			Font.Draw ("Swim to safety!", 200, 630, font, white)
			for i : 1 .. upper (rocks)
				Pic.Draw (rock, rocks (i).x, rocks (i).y, picCopy)
			end for
			Pic.Draw (character, x, y, picMerge)
			View.Update
			cls
		end loop
		if exitNow then
			exit
		end if
	end loop
	winSwimScene
end swimScene

body proc winSwimScene
	cls
	var font : int := Font.New ("mono:45:italic,underline")
	var character : int := Pic.FileNew ("images/character.bmp")
	var chars : array char of boolean
	character := Pic.Scale (character, 300, 480)
	Font.Draw ("You made it!", 0, 650, font, blue)
	Font.Draw ("You have got out of jail!", 0, 600, font, blue)
	Font.Draw ("Time to see your family. :)", 0, 550, font, blue)
	Font.Draw ("Go to the right to see them!", 0, 500, font, blue)
	var x : int := 0
	loop
		exit when x > maxx
		Input.KeyDown (chars)
		if chars (KEY_RIGHT_ARROW) then
			x := x + 5
		end if
		if chars (KEY_LEFT_ARROW) then
			x := x - 1
		end if
		Draw.FillBox (x - 15, 0, Pic.Width (character) + 15, Pic.Height (character), 21)
		Pic.Draw (character, x, 0, picCopy)
		View.Update
	end loop
	familyScene
end winSwimScene

body proc familyScene
	cls
	var family : int := Pic.FileNew ("images/family.bmp")
	var font : int := Font.New ("sans serif:60:bold")
	family := Pic.Scale (family, maxx, maxy)
	Pic.Draw (family, 0, 0, picCopy)
	Font.Draw ("Your", 650, 90, font, white)
	Font.Draw ("You win!", 350, 600, font, red)
	Font.Draw ("Thanks for playing!", 150, 535, font, red)
	var smallFont : int := Font.New ("mono:12:italic")
	Font.Draw ("(Any key to continue...)", 370, 515, smallFont, brightblue)
	View.Update
	delay (1000)
	Input.Flush
	var ch : char
	ch := getchar
end familyScene
