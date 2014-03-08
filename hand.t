%fist.t
View.Set("graphics:1000;700,nobuttonbar")
process where
	var x, y, b : int
	loop    
		mousewhere( x, y, b )
		locate( 10, 10 )
		put x, " ", y ..
	end loop
end where
fork where
Draw.FillBox( 299, 0, 458, 251, 21 )
%Fingernails
Draw.Line( 300, 175, 325, 175, black )
Draw.Line( 325, 200, 350, 200, black )
Draw.Line( 350, 225, 400, 225, black )
Draw.Line( 425, 125, 450, 100, black )
%Hand
Draw.Arc( 313, 175, 12, 25, 0, 183, black )
Draw.Arc( 338, 200, 12, 25, 0, 183, black )
Draw.Arc( 363, 225, 12, 25, 0, 183, black )
Draw.Arc( 388, 225, 12, 12, 0, 183, black )
Draw.Arc( 434, 110, 22, 15, 310, 120, black )
Draw.Line( 325, 0, 300, 50, black )
Draw.Line( 300, 50, 300, 175, black )
Draw.Line( 325, 100, 325, 200, black )
Draw.Line( 350, 100, 350, 225, black )
Draw.Line( 375, 100, 375, 225, black )
Draw.Line( 400, 100, 400, 225, black )
Draw.Line( 400, 0, 400, 50, black )
Draw.Line( 400, 100, 425, 125, black )
Draw.Line( 400, 50, 450, 100, black )
Draw.Fill( 350, 10, 64, black )
%Fill nails
Draw.Fill( 302, 176, white, black )
Draw.Fill( 327, 201, white, black )
Draw.Fill( 352, 226, white, black )
Draw.Fill( 380, 232, white, black )
Draw.Fill( 445, 115, white, black )
%Save picture
Pic.Save( Pic.New( 299, 0, 458, 251 ), "images/hand.bmp" )
