View.Set( "offscreenonly;graphics:1000;700,nobuttonbar" )
var character : int := Pic.FileNew( "images/character.bmp" )
var scaledCharacter : int 
var xscale : real := Pic.Width( character )
var yscale : real := Pic.Height( character )
loop
	xscale := Pic.Width( character )
	yscale := Pic.Height( character )
	loop    
		if xscale <= 0 or yscale <= 0 then
			exit
		end if
		scaledCharacter := Pic.Scale( character, round( xscale ), round( yscale ) )
		Pic.Draw( scaledCharacter, 100, 100, picCopy )
		View.Update
		cls
		xscale := xscale - 1
		yscale := yscale - Pic.Height( character ) / Pic.Width( character )
		Pic.Free( scaledCharacter )
	end loop
end loop
