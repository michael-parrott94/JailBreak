View.Set ("offscreenonly;graphics:1000,700,nobuttonbar")

proc clearScreen
    for i : 0 .. maxy div 2
	Draw.Line (i, i, maxx - i, i, Rand.Int( 0, maxcolor ))
	Draw.Line (maxx - i, i, maxx - i, maxy - i, Rand.Int( 0, maxcolor ))
	Draw.Line (maxx - i, maxy - i, i, maxy - i, Rand.Int( 0, maxcolor ))
	Draw.Line (i, maxy - i, i, i, Rand.Int( 0, maxcolor ))
	View.Update
	delay (5)
    end for
end clearScreen
%clearScreen
