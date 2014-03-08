%baseball.t
View.Set( "graphics:1000;700,nobuttonbar" )
process where
	var x, y, b : int
	loop    
		mousewhere( x, y, b )
		locate( 10, 10 )
		put x, " ", y ..
	end loop
end where
fork where
Draw.Oval( 300, 300, 75, 75, black )
Draw.Arc( 303, 280, 30, 25, 180, 360, red )
Draw.Arc( 250, 300, 23, 60, 343, 82, red )
Draw.Arc( 353, 300, 21, 62, 107, 200, red )

%Seams
Draw.Line( 255, 345, 270, 355, red )
Draw.Line( 260, 330, 275, 340, red )
Draw.Line( 265, 320, 280, 328, red )
Draw.Line( 265, 305, 280, 310, red )
Draw.Line( 265, 290, 280, 295, red )
Draw.Line( 267, 270, 282, 275, red )
Draw.Line( 280, 255, 290, 265, red )
%Middle
Draw.Line( 300, 248, 300, 262, red )
%Right Side
Draw.Line( 325, 255, 315, 265, red )
Draw.Line( 340, 270, 325, 275, red )
Draw.Line( 340, 290, 325, 295, red )
Draw.Line( 340, 305, 325, 310, red )
Draw.Line( 340, 320, 325, 328, red )
Draw.Line( 345, 330, 330, 340, red )
Draw.Line( 350, 345, 335, 355, red )

%Save the picture
Pic.Save( Pic.New( 225, 225, 375, 375 ), "images/baseball.bmp" )
