%elevatorscene.t
View.Set( "offscreenonly;graphics:1000,700,nobuttonbar" )
proc elevatorScene
    cls
    var elevator2 : int := Pic.FileNew( "images/insideelevator.bmp" )
    Pic.Draw( elevator2, 0, 0, picCopy)
    View.Update
    var x, y, b : int
    var elevatorFont : int := Font.New( "palatino:40:bold" )
    loop
	Mouse.Where( x, y, b )
	if b = 1 and x > 70 and x < 110 and y > 280 and y < 320 then
	    Font.Draw( "You did", 800, 600, elevatorFont, brightred )
	    Font.Draw( "it!", 800, 550, elevatorFont, brightred )
	    View.Update
	    return
	end if
    end loop
end elevatorScene
%elevatorScene
