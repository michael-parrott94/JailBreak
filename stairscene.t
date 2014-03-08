%stairsscene.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
proc stairScene
	cls
	Draw.FillBox( 0, 0, maxx, maxy, 21 )
	var stairs1 : int := Pic.FileNew( "images/stairs.bmp" )
	stairs1 := Pic.Scale( stairs1, 800, 600 )
	var sCharacter : int := Pic.FileNew( "images/character.bmp" )
	sCharacter := Pic.Scale( sCharacter, 100, 175 )
	Pic.SetTransparentColor( sCharacter, 21 )
	Pic.Draw( stairs1, 200, 0, picMerge )
	Pic.Draw( sCharacter, 100, 0, picMerge )
	View.Update
end stairScene
stairScene
