%road.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )

var tree : int := Pic.FileNew( "images/tree.bmp" )
tree := Pic.Scale( tree, 90, 180 )
Draw.FillBox( 0, 0, maxx, maxy, 21 )
Draw.Line( 300, 0, 375, maxy, black )
Draw.Line( 675, 0, 600, maxy, black )
Draw.Fill( 320, 10, grey, black )
Draw.Line( 315, 150, 660, 150, black )
Draw.Line( 337, 350, 638, 350, black )
Draw.Line( 360, 550, 615, 550, black )
Pic.Draw( tree, 50, 150, picCopy ) 
Pic.Draw( tree, 60, 390, picCopy )
Pic.Draw( tree, 750, 150, picCopy )
Pic.Draw( tree, 765, 390, picCopy )

View.Update
Pic.Save( Pic.New( 0, 0, maxx, maxy ), "path.bmp" )
