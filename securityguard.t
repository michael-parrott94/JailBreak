%securityguard.t
View.Set( "graphics:1000;700,nobuttonbar" )
%Mouse
process where
		var x, y, b : int
		loop
		mousewhere( x, y, b )
		locate( 10, 10 )
		put x, " ", y ..
		end loop
end where
fork where

Draw.FillBox( 174, 0, 626, 681, 21 )
%Feet+legs
Draw.Box( 200, 1, 600, 50, black )
Draw.Box( 275, 50, 525, 300, black )
Draw.Line( 400, 1, 400, 300, black )
%Upper body
Draw.Box( 275, 300, 525, 500, black )
%Badge
Draw.Star( 450, 425, 500, 475, black )
%Arms
Draw.Line( 275, 500, 200, 300, black )
Draw.Line( 275, 450, 200, 250, black )
Draw.Line( 200, 300, 200, 250, black )
Draw.Arc( 200, 275, 25, 25, 90, 275, black )
%Right arm
Draw.Line( 525, 500, 600, 300, black )
Draw.Line( 525, 450, 600, 250, black )
Draw.Line( 600, 300, 600, 250, black )
Draw.Arc( 600, 275, 25, 25, 270, 90, black )
%Neck
Draw.Line( 275, 500, 350, 550, black )
Draw.Line( 525, 500, 450, 550, black )
%Head
Draw.Oval( 400, 605, 75, 75, black )
Draw.ThickLine( 300, 650, 500, 650, 5,  black )
%Eyes
Draw.Oval( 360, 625, 20, 10, black )
Draw.FillOval( 360, 625, 5, 5, black )
Draw.Oval( 440, 625, 20, 10, black )
Draw.FillOval( 440, 625, 5, 5, black )
%Nose
Draw.Arc( 400, 600, 10, 20, 180, 360, black )
%Filling
%Fill feet
Draw.Fill( 250, 10, grey, black )
Draw.Fill( 450, 10, grey, black )
%Fill pants
Draw.Fill( 280, 55, red, black )
Draw.Fill( 450, 55, red, black )
%Fill shirt
Draw.Fill( 280, 310, black, black )
%Fill star
Draw.Fill( 475, 450, yellow, black )
%Fill neck
Draw.Fill( 430, 505, 232, black )
%Fill top of head
Draw.Fill( 400, 670, black, black )
%Fill arms
Draw.Fill( 270, 475, green, black )
Draw.Fill( 530, 475, green, black )
%Fill hands
Draw.Fill( 190, 280, blue, black )
Draw.Fill( 615, 280, blue, black )
%Fill eyes
Draw.Fill( 370, 625, red, black )
Draw.Fill( 450, 625, red, black )
%Fill face
Draw.Fill( 400, 600, 89, black )
%Mouth
Draw.ThickLine( 380, 560, 420, 560, 4, brightred )
%Save it
Pic.Save( Pic.New( 174, 0, 626, 681 ), "images/securityguard.bmp" )
