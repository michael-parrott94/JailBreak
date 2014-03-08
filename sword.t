%sword.t
View.Set( "graphics:1000;700,nobuttonbar" )

%Handle
Draw.Box( 125, 0, 175, 50, grey )
Draw.Box( 80, 50, 220, 100, grey )
%Sword part
Draw.Line( 125, 100, 125, 225, grey )
Draw.Line( 150, 100, 150, 275, grey )
Draw.Line( 175, 100, 175, 225, grey )
Draw.Line( 125, 225, 150, 275, grey )
Draw.Line( 175, 225, 150, 275, grey )
%Filling
Draw.Fill( 150, 25, 114, grey )
Draw.Fill( 150, 75, 111, grey )
Draw.Fill( 130, 125, 24, grey )
Draw.Fill( 155, 125, 24, grey )

%Top of the sword
Draw.FillStar( 145, 270, 155, 280, brightred )

%Save the sword!
Pic.Save( Pic.New( 80, 0, 220, 280 ), "images/sword.bmp" )
