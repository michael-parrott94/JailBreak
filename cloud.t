%cloud.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
Draw.FillBox( 424, 410, 626, 540, 21 )

Draw.Arc( 450, 475, 25, 50, 90, 275, black )
Draw.Arc( 600, 475, 25, 50, 270, 90, black )

Draw.Arc( 475, 425, 25, 12, 180, 360, black )
Draw.Arc( 525, 425, 25, 12, 180, 360, black )
Draw.Arc( 575, 425, 25, 12, 180, 360, black )

Draw.Arc( 475, 525, 25, 12, 0, 185, black )
Draw.Arc( 525, 525, 25, 12, 0, 180, black )
Draw.Arc( 575, 525, 25, 12, 0, 180, black )

Draw.Fill( 600, 475, grey, black )
View.Update

%Pic.Save( Pic.New( 424, 410, 626, 540 ), "images/cloud.bmp" )
