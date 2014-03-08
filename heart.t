%Heart.t
View.Set( "graphics:1000;700,nobuttonbar" )
%Big heart
Draw.Arc( 600, 175, 50, 45, 0, 181, brightred )
Draw.Arc( 700, 175, 50, 45, 0, 180, brightred )
Draw.Line( 550, 175, 650, 50, brightred )
Draw.Line( 750, 175, 650, 50, brightred )
Draw.Fill( 600, 175, brightred, brightred )
var font : int 
font := Font.New( "serif:34:bold,italic" )
Font.Draw( "Love!", 600, 130, font, red )
Pic.Save( Pic.New( 550, 50, 750, 225 ), "images/heart.bmp" )
