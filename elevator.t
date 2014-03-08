%elevator.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
Draw.FillBox( 49, 49, 451, 576, 21 )
%Draw the elevator
Draw.Box( 50, 50, 350, 500, black )
Draw.Line( 50, 500, 150, 575, black )
Draw.Line( 350, 500, 450, 575, black )
Draw.Line( 350, 50, 450, 125, black )
Draw.Line( 450, 125, 450, 575, black )
Draw.Line( 450, 575, 150, 575, black )
Draw.Line( 200, 50, 200, 500, black )
%Door knobs
Draw.Oval( 175, 300, 10, 10, black )
Draw.Fill( 175, 300, blue, black )
Draw.Oval( 225, 300, 10, 10, black )
Draw.Fill( 225, 300, blue, black )
%Fill
Draw.Fill( 51, 51,114, black )
Draw.Fill( 201, 51, 114, black )
Draw.Fill( 200, 501, 235, black )
Draw.Fill( 400, 200, 235, black )
var font : int := Font.New( "palatino:45:bold" )
Font.Draw( "Elevator", 75, 400, font, white )
View.Update
Pic.Save( Pic.New( 49, 49, 451, 576 ), "images/elevator.bmp" )
