%fencescene.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
proc fenceScene  
	cls  
	Draw.FillBox( 0, 0, maxx, maxy, 21 )
	var bolt : int := Pic.FileNew( "images/lightningbolt.bmp" )
	var character : int := Pic.FileNew( "images/character.bmp" )
	var fence : int := Pic.FileNew( "images/fence.bmp" )
	fence := Pic.Scale( fence, 550, 400 )
	var font : int := Font.New( "mono:28" )
	Pic.Draw( character, 0, 0, picCopy )
	Draw.Fill( 250, 600, yellow, red )
	Draw.Fill( 250, 460, blue, red )
	Pic.Draw( bolt, 90, 560, picCopy )
	Pic.Draw( bolt, 305, 560, picCopy )
	Pic.Draw( fence, 450, 0, picCopy )
	Font.Draw( "You are being electricuted!", 365, 650, font, yellow )
	Font.Draw( "Get count to 100 by", 365, 622, font, yellow )
	Font.Draw( "pressing the 'b' button", 365, 594, font, yellow )
	Font.Draw( " to get away!", 365, 566, font, yellow )
	View.Update
	var count : int := 0
	var chars : array char of boolean
	var lastChars : array char of boolean
	var bigFont : int := Font.New( "palatino:45:bold" )
	loop
		lastChars := chars
		Input.KeyDown( chars )
		if chars( 'b' ) or chars( 'B' ) and not lastChars( 'b' ) and not lastChars( 'B' )  then
			count := count + 1
		end if
		Draw.FillBox( 700, 490, 820, 560, 21 )
		Font.Draw( "Count: " + intstr( count ), 500, 500, bigFont, white )
		View.Update
		delay( 100 )
	end loop
end fenceScene
fenceScene
