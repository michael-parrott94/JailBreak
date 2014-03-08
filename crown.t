%Crown.t
View.Set( "graphics:1000;700,nobuttonbar" )
Draw.Line( 375, 275, 525, 275, black )
Draw.Line( 375, 275, 375, 375, black )
Draw.Line( 525, 275, 525, 375, black )
%Spikey parts
var x : array 1 .. 7 of int := init( 375, 400, 425, 450, 475, 500, 525 )
var y : array 1 .. 7 of int := init( 375, 325, 375, 325, 375, 325, 375 )
Draw.Polygon( x, y, 7, black )
Draw.Line( 375, 375, 525, 375, white )
Draw.Fill( 380, 300, yellow, black )
Pic.Save( Pic.New( 375, 275, 525, 375 ), "images/crown.bmp" )
