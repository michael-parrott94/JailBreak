%fence.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
Draw.ThickLine( 0, 500, 500, 500, 5, black )
Draw.ThickLine( 0, 200, 500, 200, 5, black )
Draw.ThickLine( 2, 500, 2, 200, 5, black )
Draw.ThickLine( 500, 500, 500, 200, 5, black )
for i : 0 .. 500 by 50
    Draw.Line( i, 200, i, 500, yellow )
end for
for i : 205 .. 500 by 50
    Draw.Line( 0, i, 500, i, yellow )
end for
View.Update
Pic.Save( Pic.New( 0, 199, 501, 501 ), "images/fence.bmp" )
