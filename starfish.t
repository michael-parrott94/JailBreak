%starfish.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )

Draw.FillBox( 74, 199, 226, 351, 21 )
Draw.Star( 75, 200, 225, 350, black )
Draw.Oval( 135, 280, 7, 7, black )
Draw.Fill( 135, 280, blue, black )
Draw.FillOval( 135, 280, 2, 2, brightblue )
Draw.Oval( 165, 280, 7, 7, black )
Draw.Fill( 165, 280, blue, black )
Draw.FillOval( 165, 280, 2, 2, brightblue )
Draw.Arc( 150, 260, 20, 8, 180, 360, black )
Draw.Fill( 120, 250, brightred, black )

View.Update
%Pic.Save( Pic.New( 74, 199, 226, 351 ), "images/starfish.bmp" )
