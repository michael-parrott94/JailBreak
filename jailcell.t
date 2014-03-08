%jailcell.t
View.Set( "graphics:1000;700,nobuttonbar" )
colourback( 114 )
cls
%Box for the bars
Draw.Box( 380, 275, 630, 475, black )
Draw.Fill( 390, 310, grey, black )
/*Draw.ThickLine( 400, 280, 400, 470, 10, black )
Draw.ThickLine( 450, 280, 450, 470, 10, black )
Draw.ThickLine( 500, 280, 500, 470, 10, black )
Draw.ThickLine( 550, 280, 550, 470, 10, black )
Draw.ThickLine( 600, 280, 600, 470, 10, black )
*/
%Make Bricks
for i : 1  .. maxx by 50
		Draw.Line( i, 0, i, maxy, black )
end for
%Make bars
Draw.FillBox( 400, 275, 410, 475, black )
Draw.FillBox( 450, 275, 460, 475, black )
Draw.FillBox( 500, 275, 510, 475, black )
Draw.FillBox( 550, 275, 560, 475, black )
Draw.FillBox( 600, 275, 610, 475, black )
%Save the picture
Pic.Save( Pic.New( 0, 0, maxx, maxy ), "images/jailcell.bmp" )
