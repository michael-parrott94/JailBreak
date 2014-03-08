%Eye.t
%Set the screen
View.Set( "graphics:1000;700,nobuttonbar" )
colorback( 21 )
cls
%Draw the eye
Draw.Oval( 300, 300, 120, 60, black )
%To thicken the outside
Draw.Oval( 300, 300, 115, 55, black )
%Fill the outside
Draw.Fill( 300, 356, black, black )
%Middle of the eye
Draw.Oval( 300, 300, 50, 50, black )
Draw.Oval( 300, 300, 20, 20, black )
%Fill the outside of eye, then the inside
Draw.Fill( 300, 345, blue, black )
Draw.Fill( 300, 300, black, black )
%Red lines in the eye
Draw.Line( 185, 300, 250, 300, brightred )
Draw.Line( 350, 300, 415, 300, brightred )
Pic.Save( Pic.New( 180, 240, 420, 360 ), "images/eye.bmp" )
