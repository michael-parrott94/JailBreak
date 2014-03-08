%cat.t
View.Set( "offscreenonly;graphics:1000;700,nobuttonbar" )
process where
	var x, y, b : int
	loop
	mousewhere( x, y, b )
	locate( 10, 10 )
	put x, " ", y
	end loop
end where
fork where

%Head outline
Draw.Oval( 300, 160, 125, 125, black )
%Ears
Draw.Line( 215, 250, 240, 300, black ) 
Draw.Line( 240, 300, 265, 280, black )
%Right ear
Draw.Line( 350, 275, 375, 300, black )
Draw.Line( 375, 300, 390, 247, black )
%Eyes
Draw.Oval( 250, 200, 50, 50, black )
Draw.FillOval( 250, 200, 10, 10, black )
Draw.Oval( 350, 200, 50, 50, black )
Draw.FillOval( 350, 200, 10, 10, black )
%Nose
Draw.Line( 280, 140, 320, 140, black )
Draw.Arc( 300, 140, 20, 20, 180, 360, black )
%Mouth
Draw.Arc( 255, 120, 44, 30, 180, 360, black )
Draw.Arc( 345, 120, 44, 30, 180, 5, black )
Draw.Arc( 300, 105, 10, 10, 205, 340, black )
%Whiskers
Draw.Line( 290, 130, 100, 150, black )
Draw.Line( 290, 130, 100, 110, black )
Draw.Line( 310, 130, 500, 150, black )
Draw.Line( 310, 130, 500, 110, black )
%Freckles
Draw.FillOval( 240, 115, 2, 2, black )
Draw.FillOval( 260, 115, 2, 2, black )
Draw.FillOval( 250, 105, 2, 2, black )
Draw.FillOval( 330, 115, 2, 2, black )
Draw.FillOval( 350, 115, 2, 2, black )
Draw.FillOval( 340, 105, 2, 2, black )
%Filling
Draw.Fill( 300, 260, 114, black )
Draw.Fill( 200, 130, 114, black )
Draw.Fill( 400, 130, 114, black )
Draw.Fill( 330, 70, 114, black )
%Fill eyes
Draw.Fill( 270, 200, 8, black )
Draw.Fill( 370, 200, 8, black )
%Fill nose
Draw.Fill( 300, 130, 66, black )
%Fill mouth part
Draw.Fill( 255, 120, 64, black )
Draw.Fill( 345, 120, 64, black )
Draw.Fill( 300, 105, brightred, black )
%Fill ears
Draw.Fill( 240, 280, 66, black )
Draw.Fill( 370, 280, 66, black )
View.Update
%Saving
var image : int := Pic.New( 100, 35, 500, 300 )
%Pic.Save( image, "cat.bmp" )
cls
Pic.Draw( image, 250, 250, picCopy )
%Fence
Draw.Arc( 390, 240, 10, 28, 98, 228, black )
Draw.Arc( 500, 240, 10, 28, 330, 62, black )
%Paws
Draw.Line( 250, 210, 635, 210, black )
Draw.Oval( 340, 210, 15, 20, black )
Draw.Oval( 370, 210, 15, 20, black )
Draw.Oval( 400, 210, 15, 20, black )
Draw.Fill( 340, 209, 114, black )
Draw.Fill( 370, 209, 114, black )
Draw.Fill( 400, 209, 114, black )
Draw.Fill( 340, 211, 114, black )
Draw.Fill( 370, 211, 114, black )
Draw.Fill( 400, 211, 114, black )
%Right side
Draw.Oval( 485, 210, 15, 20, black )
Draw.Oval( 515, 210, 15, 20, black )
Draw.Oval( 545, 210, 15, 20, black )
Draw.Fill( 485, 209, 114, black )
Draw.Fill( 485, 211, 114, black )
Draw.Fill( 515, 209, 114, black )
Draw.Fill( 515, 211, 114, black )
Draw.Fill( 545, 209, 114, black )
Draw.Fill( 545, 211, 114, black )
%Fill his body
Draw.Fill( 390, 240, 114, black )
%Fence
Draw.Line( 250, 210, 250, 110, black )
Draw.Line( 280, 210, 280, 110, black )
Draw.Line( 310, 210, 310, 110, black )
Draw.Line( 415, 210, 415, 110, black )
Draw.Line( 442, 210, 442, 110, black )
Draw.Line( 470, 210, 470, 110, black )
Draw.Line( 570, 210, 570, 110, black )
Draw.Line( 600, 210, 600, 110, black )
Draw.Line( 635, 210, 635, 110, black )
Pic.Save( Pic.New( 250, 110, 650, 515 ), "images/cat.bmp" )
loop 
View.Update
end loop
