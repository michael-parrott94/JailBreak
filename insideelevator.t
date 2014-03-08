%insideelevator.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
colorback( grey )
cls
%Elevator
Draw.Line( 400, 0, 400, maxy, black )
Draw.Line( 600, 0, 600, maxy, black )
Draw.Line( 800, 0, 800, maxy, black )
Draw.Box( 400, 0, 800, maxy, black )
%Fill the elevator
Draw.Fill( 401, 1, 22, black )
Draw.Fill( 601, 1, 22, black )
%Buttons
var font : int := Font.New( "palatino:25:bold" )
Draw.Box( 50, 150, 200, 450, black )
Draw.Oval( 90, 200, 20, 20, black )
Draw.Fill( 90, 200, yellow, black )
Draw.Oval( 160, 200, 20, 20, black )
Draw.Fill( 160, 200, yellow, black )
Draw.Oval( 90, 300, 20, 20, black )
Draw.Fill( 90, 300, yellow, black )
Draw.Oval( 160, 300, 20, 20, black )
Draw.Fill( 160, 300, yellow, black )
Draw.Oval( 90, 400, 20, 20, black )
Draw.Fill( 90, 400, yellow, black )
Draw.Oval( 160, 400, 20, 20, black )
Draw.Fill( 160, 400, yellow, black )
Draw.Fill( 51, 151, brightblue, black )
Font.Draw( "5", 80, 190, font, red )
Font.Draw( "6", 150, 190, font, red )
Font.Draw( "3", 80, 290, font, red )
Font.Draw( "4", 150, 290, font, red )
Font.Draw( "1", 80, 390, font, red )
Font.Draw( "2", 150, 390, font, red )
var messageFont : int := Font.New( "serif:20:italic" )
Font.Draw( "Go to floor 3.", 0, 660, messageFont, brightred )
Font.Draw( "Click on the button with the", 0, 630, messageFont, brightred )
Font.Draw( "number 3 on it.", 0, 610, messageFont, brightred )
Font.Draw( "(Use your mouse)", 0, 580, messageFont, brightred )
View.Update
%Pic.Save( Pic.New( 0, 0, maxx, maxy ), "images/insideelevator.bmp" )
%Mouse
/*var x, y, b : int
loop
		Mouse.Where( x, y, b )
		if b = 1 and x >= 70 and x <= 110 and y >= 280 and y <= 320 then
		exit
		end if
end loop
var bigFont : int := Font.New( "mono:60:bold" )
Font.Draw( "Going up!", 0, 10, bigFont, black )
View.Update*/
