%tree.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )

var x : array 1 .. 11 of int := init( 425, 500, 450, 500, 475, 538, 600, 575, 625, 575, 650 )
var y : array 1 .. 11 of int := init( 150, 200, 200, 250, 250, 350, 250, 250, 200, 200, 150 )
Draw.FillBox( 424, 49, 651, 351, 21 )
Draw.Box( 500, 50, 575, 150, black )
Draw.Polygon( x, y, 11, black )
Draw.Fill( 570, 160, green, black )
Draw.Fill( 501, 51, brown, black )

View.Update
%Pic.Save( Pic.New( 424, 49, 651, 351 ), "images/tree.bmp" )
