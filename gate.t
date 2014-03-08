%gate.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
Draw.Box( 100, 100, 400, 400, black )
Draw.Oval( 350, 250, 25, 25, black )
Draw.Fill( 350, 250, brightred, black )
Draw.Fill( 101, 101, 114, black )
Pic.Save( Pic.New( 99, 99, 401, 401 ), "images/gate.bmp" )
