%Michael Parrott
%March 6, 2009
%character.t

View.Set( "graphics:1000;700,nobuttonbar" )
%Process for getting co-ordinates
process where
		var x, y, b : int
		loop    
				mousewhere( x, y, b )
				locate( 10, 10 )
				put x, " ", y ..
		end loop
end where
fork where

%Shoes
Draw.Arc( 275, 75, 25, 25, 90, 180, red )
Draw.Arc( 525, 75, 25, 25, 360, 90, red )
Draw.Line( 250, 50, 550, 50, red )
Draw.Line( 275, 100, 528, 100, red )
Draw.Line( 400, 50, 400, 275, red )
Draw.Line( 250, 80, 250, 50, red )
Draw.Line( 550, 80, 550, 50, red )
%Nike signs
Draw.Line( 300, 75, 325, 50, red )
Draw.Line( 325, 50, 350, 100, red )
Draw.Line( 425, 100, 450, 50, red )
Draw.Line( 450, 50, 475, 75, red )

%Pants
Draw.Line( 300, 100, 325, 325, red )
Draw.Line( 500, 100, 475, 325, red )
Draw.Line( 325, 325, 475, 325, red )
Draw.Box( 325, 250, 375, 300, red )
Draw.Box( 425, 250, 475, 300, red )

%Shirt
Draw.Arc( 350, 500, 25, 25, 90, 180, red )
Draw.Arc( 450, 500, 25, 25, 360, 90, red )
Draw.Line( 325, 325, 325, 505, red )
Draw.Line( 475, 325, 475, 503, red )
%Arms
Draw.Line( 325, 475, 225, 375, red )
Draw.Line( 325, 425, 225, 325, red )
Draw.Line( 225, 375, 225, 325, red )
Draw.Line( 225, 375, 175, 350, red )
Draw.Line( 225, 325, 175, 350, red )
Draw.Line( 225, 350, 175, 350, red )
Draw.Line( 475, 475, 575, 375, red )
Draw.Line( 475, 425, 575, 325, red )
Draw.Line( 575, 375, 575, 325, red )
Draw.Line( 575, 375, 625, 350, red )
Draw.Line( 575, 325, 625, 350, red )
Draw.Line( 575, 350, 625, 350, red )
%Neck
Draw.Line( 350, 525, 375, 525, red )
Draw.Line( 375, 525, 375, 550, red )
Draw.Line( 425, 525, 425, 550, red )
Draw.Line( 425, 525, 450, 525, red )
%Head
Draw.Oval( 400, 620, 75, 75, red )
%Nose
Draw.Arc( 400, 625, 8, 25, 180, 360, red )
%Smile
Draw.Arc( 400, 575, 25, 13, 180, 360, red )
%Hair
Draw.Line( 350, 675, 450, 675, red )
Draw.Fill( 358, 678, black, red )
%Star on shirt, fill colour
Draw.Star( 350, 400, 450, 500, red )
Draw.Fill( 400, 450, brightred, red )
Draw.Fill( 400, 375, yellow, red )
%Fill pants
Draw.Fill( 400, 300, black, red )
%Fill pockets
Draw.Fill( 326, 251, green, red )
Draw.Fill( 426, 251, green, red )
%Fill Arms
Draw.Fill( 477, 452, purple, red )
Draw.Fill( 298, 425, purple, red )
%Fill shoes
Draw.Fill( 300, 52, brightred, red ) %Left shoe
Draw.Fill( 350, 52, brightred, red )
Draw.Fill( 425, 52, brightred, red ) %Right shoe
Draw.Fill( 500, 52, brightred, red )
%Fill face + hands
Draw.Fill( 400, 620, 64, red )
Draw.Fill( 585, 355, 64, red )
Draw.Fill( 585, 340, 64, red )
Draw.Fill( 210, 355, 64, red )
Draw.Fill( 210, 340, 64, red )
%Head
Draw.FillOval( 375, 650, 12, 12, 8 ) %Eye
Draw.FillOval( 425, 650, 12, 12, 8 ) %Eye
Draw.FillOval( 375, 650, 2, 2, brightblue )
Draw.FillOval( 425, 650, 2, 2, brightblue )

%Fill the background
Draw.Fill( 1, 1, 21, red )

%Save character image
var image : int 
image := Pic.New( 175, 50, 625, 699 )
%Pic.Save( image, "images/character.bmp" )
/*var chars : array char of boolean
var x, y : int := 0
for i : 1 .. 360 by 10
				cls
				Pic.Draw( Pic.Rotate( image, i, 150, 350 ), 200, 50, picCopy )
				View.Update
end for
loop
				Input.KeyDown( chars )
				if chars( KEY_RIGHT_ARROW ) then
				x := x + 25
				end if
				if chars( KEY_LEFT_ARROW ) then
				x := x - 25
				end if
				if chars( KEY_UP_ARROW ) then
				y := y + 5
				end if
				if chars( KEY_DOWN_ARROW ) then
				y := y - 5
				end if
				Pic.Draw( image, x, y, picCopy )
				View.Update
				cls 
				delay( 10 )
end loop*/
