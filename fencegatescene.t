%fencegatescene.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
proc fenceGateScene 
	cls
	var fence : int := Pic.FileNew( "images/fence.bmp" )
	fence := Pic.Scale( fence, 300, 200 )
	var gate : int := Pic.FileNew( "images/gate.bmp" )
	gate := Pic.Scale( gate, 200, 200 )
	var character12 : int := Pic.FileNew( "images/character.bmp" )
	character12 := Pic.Scale( character12, 350, 500 )
	Pic.SetTransparentColor( character12, 21 )
	
	var font : int := Font.New( "palatino:45:bold" )
  
	Pic.Draw( fence, 0, 200, picCopy )
	Font.Draw( "Fence: 'f'", 0, 400, font, red )
	Pic.Draw( gate, 800, 200, picCopy )
	Font.Draw( "Gate: 'g'", 770, 400, font, red )
	Pic.Draw( character12, 350, 0, picMerge )
	View.Update
end fenceGateScene
fenceGateScene
