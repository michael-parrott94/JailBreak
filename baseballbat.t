%baseballbat.t
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
Draw.Arc( 300, 300, 60, 20, 120, 60, black )
Draw.Line( 270, 317, 240, 517, black )
Draw.Line( 330, 317, 360, 517, black )
Draw.Arc( 300, 517, 60, 60, 0, 185, black )
Draw.Fill( 300, 300, 115, black )
Pic.Save( Pic.New( 238, 280, 362, 577 ), "images/baseballbat.bmp" )
