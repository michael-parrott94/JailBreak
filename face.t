%face.t
View.Set( "graphics:1000;700,nobuttonbar" )

Draw.Oval( 400, 400, 100, 100, black )
%Ears
Draw.Arc( 500, 400, 15, 25, 260, 100, black )
Draw.Arc( 500, 400, 10, 10, 270, 90, black )
Draw.Arc( 300, 400, 15, 25, 80, 280, black )
Draw.Fill( 511, 400, black, black )
Draw.Arc( 300, 400, 10, 10, 90, 275, black )
Draw.Fill( 289, 400, black, black )
Draw.Fill( 299, 400, 65, black )
Draw.Fill( 501, 400, 65, black )
%Eyes
Draw.Oval( 360, 430, 30, 25, black )
Draw.Oval( 440, 430, 30, 25, black )
Draw.Oval( 360, 430, 10, 10, black )
Draw.Fill( 360, 430, blue, black )
Draw.Oval( 440, 430, 10, 10, black )
Draw.Fill( 440, 430, blue, black )
Draw.Fill( 380, 430, 94, black )
Draw.Fill( 460, 430, 94, black )
%Nose
Draw.Line( 400, 430, 360, 360, black )
Draw.Line( 360, 360, 420, 360, black )
%Mouth
Draw.Oval( 400, 330, 40, 15, black )
Draw.Fill( 400, 330, red, black  )
%Hair/hat
Draw.ThickLine( 320, 460, 520, 460, 3, black )
Draw.Fill( 340, 470, green, black )
%Fill the face
Draw.Fill( 400, 400, 66, black )
%Save the image
Pic.Save( Pic.New( 280, 300, 520, 500 ), "images/face.bmp" )
