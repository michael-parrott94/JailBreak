%cdcat.t
%Set the screen
View.Set( "offscreenonly;graphics:1000;700,nobuttonbar" )
colorback( 21 )
cls

%Create the cd
Draw.Oval( 300, 300, 100, 100, black )
Draw.Oval( 300, 300, 20, 20, black )
Draw.Fill( 270, 270, grey, black )
var catFont : int := Font.New( "serif:15" )
Font.Draw( "Michael", 275, 350, catFont, black )
Font.Draw( "Parrott", 279, 335, catFont, black )
var image : int := Pic.New( 200, 200, 400, 400 )

%Load the cat image
var cat : int := Pic.FileNew( "images/cat.bmp" )
%Draw the cat to scale
Pic.Draw( Pic.Scale( cat, 65, 65 ), 270, 210, picMerge )
var catCD : int := Pic.New( 200, 200, 400, 400 )
%Pic.Save( catCD, "images/catcd.bmp" )

%Font for menu
/*var menuFont : int := Font.New( "mono:48:bold,italic,underline" )
%Variables for cat spinning
var degrees : int := 1

var rotatedCD : int
%Menu
loop
		%Rotate the cd
		degrees := degrees + 4
		
		rotatedCD := Pic.Rotate( catCD, degrees, 100, 100 )
		%Draw the images
		Pic.Draw( rotatedCD, 0, maxy - Pic.Height( catCD ), picMerge )
		Pic.Draw( rotatedCD, 800, maxy - Pic.Height( catCD ), picMerge )
		Font.Draw( "Michael's Game", 250, maxy - 48, menuFont, black )
		View.Update
		cls
		%End the loop
		Pic.Free( rotatedCD )
end loop*/
